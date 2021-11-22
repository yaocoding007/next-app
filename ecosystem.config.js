module.exports = [
    {
      "name": "next-app",
      "script": "./node_modules/next/dist/bin/next",
      "args" : ["start", "--port", "3000"],
      "instances": "4",
      "exec_mode": "cluster",
      "max_memory_restart": "1024M",
      "error_file": "./logs/err.log",
      "out_file": "./logs/out.log",
      "merge_logs": true,
      "log_date_format": "YYYY-MM-DD HH:mm",
    }
  ]