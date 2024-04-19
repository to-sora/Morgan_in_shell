if [ "$#" -lt 3 ]; then
    echo "Usage: $0 iter_no at last  arg2: wait time arg3: clear at last"
fi


SCRIPT_DIR=$(dirname "$BASH_SOURCE")
TXT_DIR="$SCRIPT_DIR/txt"
cat "$TXT_DIR/cha.txt"
sleep_time=$(($2 + 1))  # Calculate $2 + 1 and store it in sleep_time
sleep $sleep_time  
clear
cat "$TXT_DIR/welcme_txt.txt"
sleep $2
clear
cat "$TXT_DIR/3line.txt"
sleep $2
clear
FILES=($(find "$TXT_DIR/random" -type f -name '*.txt'))

# Check if there are at least three files


# Shuffle the array and pick the first three entries
SELECTED_FILES=($(shuf -e "${FILES[@]}" -n $1))

# Display the contents of the three randomly selected files
for file in "${SELECTED_FILES[@]}"; do
#   echo "Displaying contents of: $file"
  clear
  cat "$file"
    sleep $2
#   echo "---------------------------------------"
done
if [ "$3" = "true" ]; then
    clear
fi
run-parts --lsbsysinit /etc/update-motd.d

