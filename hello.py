import subprocess

def run_cmd(cmd):
    result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    print(result.stdout)
    if result.stderr:
        print("ERROR:", result.stderr)

# Step 1: Add all changes
run_cmd("git add .")

# Step 2: Commit
run_cmd('git commit -m "Auto commit from Python script"')

# Step 3: Push to branch (change branch if needed)
run_cmd("git push origin main")

print("Hello, World!")

name = input("Enter your name: ")

print("Welcome,", name)

a = 10
b = 20

sum = a + b

print("Addition =", sum)
