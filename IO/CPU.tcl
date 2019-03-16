# $file will contain the file pointer to test.txt (file must exist)
set file [open test.txt]

# $input will contain the contents of the file
set input [read $file]

# $lines will be an array containing each line of test.txt
set lines [split $input "\n"]

# Loop through each line
foreach line $lines {
    # Do something with line here
    puts $line
}

# Clean up
close $file