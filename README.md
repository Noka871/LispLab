markdown
# Laboratory Work #7 - Enhanced with Logging

## 📁 Project Structure
LispLab/
├── lab7.lisp # Main LISP function
├── lab7_with_tests.lisp # Version with built-in test suite
├── run_with_logs.bat # Main script with logging
├── view_logs.bat # Log viewer utility
├── run.bat # Simple version (no logs)
├── logs/ # Auto-generated logs directory
└── README.md # This file

text

## 🚀 Quick Start
1. **Double-click `run_with_logs.bat`** - runs tests with automatic logging
2. **Check `logs/` folder** - contains timestamped log files
3. **Use `view_logs.bat`** - to view any log file

## 📊 Log File Example
=== LISP LAB WORK #7 TEST REPORT ===

Timestamp: 3991234567

Test 1: (remove-deep 'a '(a b c))
Result: (B C)

Test 2: (remove-deep 'a '(a (a b) c))
Result: ((B) C)

Test 3: (remove-deep 'a '(1 2 3))
Result: (1 2 3)

Test 4: (remove-deep 'a '(a (b (a c) a) d))
Result: ((B (C)) D)

=== ALL TESTS PASSED ===

text

## 🔧 Scripts Overview

| Script | Purpose | Output |
|--------|---------|---------|
| `run_with_logs.bat` | Runs tests with logging | Screen + log file |
| `view_logs.bat` | Views/selects log files | Screen |
| `run.bat` | Simple test run | Screen only |

## 📈 Log Management
- Logs are saved in `logs/` folder with timestamps
- Format: `test_YYYY-MM-DD_HH-MM-SS.log`
- Previous logs are never overwritten
- Use `view_logs.bat` to browse and view logs

## 🎯 Features
- ✅ Automatic timestamping
- ✅ Both screen and file output
- ✅ Log browsing utility
- ✅ No log overwriting
- ✅ Built-in test suite option