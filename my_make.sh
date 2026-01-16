# 1. Install uv (one-liner, latest version)
curl -LsSf https://astral.sh/uv/install.sh | sh

# 2. Create & activate virtual environment + install revizor-fuzzer
uv venv --python 3.9 ~/revizor-env
source ~/revizor-env/bin/activate

uv pip install revizor-fuzzer

# 3. Clone & build kernel module executor (still needs sudo)
git clone https://github.com/microsoft/sca-fuzzer.git
cd sca-fuzzer/src/x86
make && sudo make install

# Done - you can now run:
# rvzr --help
# rvzr fuzz ...
