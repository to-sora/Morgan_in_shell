SCRIPT_DIR=$(dirname "$BASH_SOURCE")
run_path="$SCRIPT_DIR/run.sh"
chmod +x $run_path
echo "source \"$run_path\" 1 1 false" >> ~/.bashrc