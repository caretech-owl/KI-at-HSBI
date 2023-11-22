export LLAMA_ROOT="$1"
export GPU_CHOICE="A"
export USE_CUDA118="N"
# export LAUNCH_AFTER_INSTALL="FALSE"

cd ${LLAMA_ROOT}
bash ./start_linux.sh --share --gradio-auth $2:$3
