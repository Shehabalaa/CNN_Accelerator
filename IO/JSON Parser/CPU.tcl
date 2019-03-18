# $file will contain the file pointer to test.txt (file must exist)
set file [open FC_input_bitstring.txt]

# $input will contain the contents of the file
set input [read $file]

# $lines will be an array containing each line of test.txt
set lines [split $input "\n"]

# Loop through each line
foreach line $lines {
    # Do something with line here
    set nums [split $line " "]
    foreach num $nums {
        puts "Force input = "
        puts $num
        puts "binary format"
    }
    puts "\n"
}

# Clean up
close $file