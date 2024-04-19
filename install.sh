SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# Create the absolute path to the run.sh script
run_path="$SCRIPT_DIR/run.sh"
echo $run_path
chmod +x $run_path
echo "source \"$run_path\" 1 1 false" >> ~/.bashrc