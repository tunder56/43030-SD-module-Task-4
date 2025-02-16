#!/bin/bash

echo "============================"
echo "Executing todo.py"
echo "============================"
python3 /app/.github/scripts/todo.py | tee /app/todo_output.txt

echo "============================"
echo "Executing todo-test.py"
echo "============================"
python3 /app/.github/scripts/todo-test.py | tee /app/test_output.txt

echo "============================"
echo "Executing update_index.sh"
echo "============================"
python3 /app/.github/scripts/update_index.sh /app/todo_output.txt /app/test.output.txt


echo "============================"
echo "Done!"
echo "============================"