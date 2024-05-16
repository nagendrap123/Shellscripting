#!//bin//bash
# Replace all occurrences of 'a' with 'x'
echo "apple" | tr 'a' 'x'  # Output: xpple

# Delete all digits
echo "Hello123World456" | tr -d '0-9'  # Output: HelloWorld

# Convert uppercase letters to lowercase
echo "HELLO" | tr 'A-Z' 'a-z'  # Output: hello

# Squeeze repeated occurrences of spaces into a single space
echo "This   is    a   sentence." | tr -s ' '  # Output: This is a sentence.

# Complement (replace characters NOT in SET1)
echo "abcdefg" | tr -c 'aeiou' '*'  # Output: *e****
