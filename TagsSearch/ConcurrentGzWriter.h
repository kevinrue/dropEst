#pragma once

#include <atomic>
#include <fstream>
#include <string>

#include <Tools/BlockingConcurrentQueue.h>

namespace TagsSearch
{
	class ConcurrentGzWriter
	{
	private:
		static const size_t max_cache_size;

		const std::string _out_file_name;
		const std::string _out_file_extension;
		const size_t _max_file_size;
		const bool _limited_file_size;

		std::atomic<bool> _write_in_progress;

		Tools::BlockingConcurrentQueue<std::string> _lines;
		Tools::BlockingConcurrentQueue<std::string> _gzipped;

		std::ofstream _out_file;

		size_t _current_file_reads_written;
		size_t _out_file_index;

	private:
		std::string get_out_filename() const;
		void increase_out_file();
		bool write(const std::string &text);

		static std::string gzip(const std::string &text);

	public:
		ConcurrentGzWriter(const std::string &out_file_name, const std::string &file_extension, size_t max_file_size);
		bool full() const;
		bool empty() const;
		const std::string &base_filename() const;

		void enqueue_line(const std::string &line);
		void flush_gzip(bool unlimited_size);
		void flush_write();
	};
}

