export COMMANDLINE_ARGS="--xformers --share --gradio-auth hsbi:ostrau"
export TRANSFORMERS_CACHE="$1/.cache/hf" 
export PIP_CACHE_DIR="$1/.cache/pip"

mkdir -p $1/.cache

cd $1
bash ./webui.sh
