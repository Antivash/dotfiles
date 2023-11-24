#!/bin/false

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/stable-diffusion-webui/main/config/provisioning/default.sh
printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"

function download() {
    wget -q --show-progress -e dotbytes="${3:-4M}" -O "$2" "$1"
}
disk_space=$(df --output=avail -m $WORKSPACE|tail -n1)
webui_dir=/opt/stable-diffusion-webui
models_dir=${webui_dir}/models
sd_models_dir=${models_dir}/Stable-diffusion
extensions_dir=${webui_dir}/extensions
cn_models_dir=${extensions_dir}/sd-webui-controlnet/models
vae_models_dir=${models_dir}/VAE
upscale_models_dir=${models_dir}/ESRGAN

mkdir -p ${upscale_models_dir}

printf "Downloading extensions..."
cd $extensions_dir

# Controlnet
printf "Setting up Controlnet...\n"
if [[ -d sd-webui-controlnet ]]; then
    (cd sd-webui-controlnet && \
        git pull && \
        micromamba run -n webui ${PIP_INSTALL} -r requirements.txt
    )
else
    (git clone https://github.com/Mikubill/sd-webui-controlnet && \
         micromamba run -n webui ${PIP_INSTALL} -r sd-webui-controlnet/requirements.txt
    )
fi

if [[ $XPU_TARGET != "CPU" && $WEBUI_FLAGS != *"--use-cpu all"* ]]; then
    # Dreambooth
    printf "Setting up Dreambooth...\n"
    if [[ -d sd_dreambooth_extension ]]; then
        (cd sd_dreambooth_extension && \
            git pull && \
            micromamba run -n webui ${PIP_INSTALL} -r requirements.txt
        )
    else
        (git clone https://github.com/d8ahazard/sd_dreambooth_extension && \
            micromamba run -n webui ${PIP_INSTALL} -r sd_dreambooth_extension/requirements.txt
        )
    fi
fi

# Dynamic Prompts
printf "Setting up Dynamic Prompts...\n"
if [[ -d sd-dynamic-prompts ]]; then
    (cd sd-dynamic-prompts && git pull)
else
    git clone https://github.com/adieyal/sd-dynamic-prompts.git
    micromamba run -n webui ${PIP_INSTALL} -U \
        dynamicprompts[attentiongrabber,magicprompt]~=0.29.0 \
        send2trash~=1.8
fi

# Face Editor
printf "Setting up Face Editor...\n"
if [[ -d sd-face-editor ]]; then
    (cd sd-face-editor && git pull)
else
    git clone https://github.com/ototadana/sd-face-editor.git
fi

# Image Browser
printf "Setting up Image Browser...\n"
if [[ -d stable-diffusion-webui-images-browser ]]; then
    (cd stable-diffusion-webui-images-browser && git pull)
else
    git clone https://github.com/yfszzx/stable-diffusion-webui-images-browser
fi

# Regional Prompter
printf "Setting up Regional Prompter...\n"
if [[ -d sd-webui-regional-prompter ]]; then
    (cd sd-webui-regional-prompter && git pull)
else
    git clone https://github.com/hako-mikan/sd-webui-regional-prompter.git
fi

# Ultimate Upscale
printf "Setting up Ultimate Upscale...\n"
if [[ -d ultimate-upscale-for-automatic1111 ]]; then
    (cd ultimate-upscale-for-automatic1111 && git pull)
else
    git clone https://github.com/Coyote-A/ultimate-upscale-for-automatic1111
fi

printf "Setting up Reactor Force...\n"
if [[ -d sd-webui-reactor-force ]]; then
    (cd sd-webui-reactor-force && git pull)
else
    (git clone https://github.com/Gourieff/sd-webui-reactor-force && \
            micromamba run -n webui ${PIP_INSTALL} -r sd-webui-reactor-force/requirements.txt
        )

    (mkdir -p ${models_dir}/insightface && wget -P ${models_dir}/insightface "https://huggingface.co/ashleykleynhans/inswapper/resolve/main/inswapper_128.onnx")
fi

printf "Setting up Adetailer...\n"
if [[ -d adetailer ]]; then
    (cd adetailer && git pull)
else
    (git clone https://github.com/Bing-su/adetailer && \
        micromamba run -n webui python adetailer/install.py)
fi

#Dev Dark Theme 
printf "Setting up DevDark...\n"
if [[ -d stable-diffusion-webui-devdark ]]; then
    (cd stable-diffusion-webui-devdark && git pull)
else
    (git clone https://github.com/devdarktheme/stable-diffusion-webui-devdark)
fi

#A1111 Tag Complete
printf "Setting up A1111 Tag Complete...\n"
if [[ -d a1111-sd-webui-tagcomplete ]]; then
    (cd a1111-sd-webui-tagcomplete && git pull)
else
    (git clone https://github.com/DominikDoom/a1111-sd-webui-tagcomplete)
fi

#Config Presets
printf "Setting up Config-Presets...\n"
if [[ -d Config-Presets ]]; then
    (cd Config-Presets && git pull)
else
    (git clone https://github.com/Zyin055/Config-Presets)
fi

#Style Vars
printf "Setting up Style Vars...\n"
if [[ -d extension-style-vars ]]; then
    (cd extension-style-vars && git pull)
else
    (git clone https://github.com/SirVeggie/extension-style-vars)
fi

#Model Keyword
printf "Setting up Model Keyword...\n"
if [[ -d model-keyword ]]; then
    (cd model-keyword && git pull)
else
    (git clone https://github.com/mix1009/model-keyword && \
        micromamba run -n webui python )
fi

#Ratio Lock
printf "Setting up Ratio Lock...\n"
if [[ -d sd-ratio-lock ]]; then
    (cd sd-ratio-lock && git pull)
else
    (git clone https://github.com/bit9labs/sd-ratio-lock)
fi

#Aspect Ratio Helper
printf "Setting up Aspect Ratio Helper...\n"
if [[ -d sd-webui-aspect-ratio-helper ]]; then
    (cd sd-webui-aspect-ratio-helper && git pull)
else
    (git clone https://github.com/thomasasfk/sd-webui-aspect-ratio-helper)
fi

#CD Tuner
printf "Setting up CD Tuner...\n"
if [[ -d sd-webui-cd-tuner ]]; then
    (cd sd-webui-cd-tuner && git pull)
else
    (git clone https://github.com/hako-mikan/sd-webui-cd-tuner)
fi

#FreeU
printf "Setting up FreeU...\n"
if [[ -d sd-webui-freeu ]]; then
    (cd sd-webui-freeu && git pull)
else
    (git clone https://github.com/ljleb/sd-webui-freeu)
fi

#Inpaint Anthing
printf "Setting up Inpaint Anthing...\n"
if [[ -d sd-webui-inpaint-anything ]]; then
    (cd sd-webui-inpaint-anything && git pull)
else
    (git clone https://github.com/Uminosachi/sd-webui-inpaint-anything)
fi

#LCM
printf "Setting up LCM...\n"
if [[ -d sd-webui-lcm ]]; then
    (cd sd-webui-lcm && git pull)
else
    (git clone https://github.com/Alienge/sd-webui-lcm && \
        micromamba run -n webui python sd-webui-lcm/install.py )
fi

#Memory Release
printf "Setting up Memory Release...\n"
if [[ -d sd-webui-memory-release ]]; then
    (cd sd-webui-memory-release && git pull)
else
    (git clone https://github.com/Haoming02/sd-webui-memory-release)
fi

#Segment Anything
printf "Setting up Segment Anything...\n"
if [[ -d sd-webui-segment-anything ]]; then
    (cd sd-webui-segment-anything && git pull)
else
    (git clone https://github.com/continue-revolution/sd-webui-segment-anything && \
        micromamba run -n webui python sd-webui-segment-anything/install.py )
fi

#Delete Button
printf "Setting up Delete Button...\n"
if [[ -d sd-delete-button ]]; then
    (cd sd-delete-button && git pull)
else
    (git clone https://github.com/AlUlkesh/sd-delete-button && \
        micromamba run -n webui python sd-delete-button/install.py )
fi

#Prompt Formatter
printf "Setting up Prompt Formatter...\n"
if [[ -d sd_extension-prompt_formatter ]]; then
    (cd sd_extension-prompt_formatter && git pull)
else
    (git clone https://github.com/uwidev/sd_extension-prompt_formatter && \
        micromamba run -n webui python sd_extension-prompt_formatter/install.py )
fi

#CivitAI Helper
printf "Setting up CivitAI Helper...\n"
if [[ -d Stable-Diffusion-Webui-CIvitai-Helper ]]; then
    (cd Stable-Diffusion-Webui-CIvitai-Helper && git pull)
else
    (git clone https://github.com/butaixianran/Stable-Diffusion-Webui-CIvitai-Helper && \
        micromamba run -n webui python Stable-Diffusion-Webui-CIvitai-Helper/install.py )
fi

#UnivAiCharGen
printf "Setting up UnivAiCharGen...\n"
if [[ -d UnivAICharGen ]]; then
    (cd UnivAICharGen && git pull)
else
    (git clone https://github.com/Klokinator/UnivAICharGen && \
        micromamba run -n webui python UnivAICharGen/install.py )
fi
## v1-5-pruned-emaonly
#model_file=${sd_models_dir}/_v1-5-pruned-emaonly.ckpt
#model_url=https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.ckpt
#
#if [[ ! -e ${model_file} ]]; then
#    printf "Downloading Stable Diffusion 1.5...\n"
#    download ${model_url} ${model_file}
#fi
#
#if [[ $disk_space -ge 25000 ]]; then
#    # # v2-1_768-ema-pruned
#    # model_file=${sd_models_dir}/v2-1_768-ema-pruned.ckpt
#    # model_url=https://huggingface.co/stabilityai/stable-diffusion-2-1/resolve/main/v2-1_768-ema-pruned.ckpt
#    
#    # if [[ ! -e ${model_file} ]]; then
#    #     printf "Downloading Stable Diffusion 2.1...\n"
#    #     download ${model_url} ${model_file}
#    # fi
#    
#    # model_file=${sd_models_dir}/v2-1_768-ema-pruned.ckpt
#    # model_url=https://huggingface.co/stabilityai/stable-diffusion-2-1/resolve/main/v2-1_768-ema-pruned.ckpt
#    
#    # if [[ ! -e ${model_file} ]]; then
#    #     printf "Downloading Stable Diffusion 2.1...\n"
#    #     download ${model_url} ${model_file}
#    # fi
#    
#    
#    cd ${sd_models_dir}
#    if [[ ! -e "epicphotogasm_y.safetensors" ]]; then
#        printf "Download epicphotogasm_y\n"
#        wget --trust-server-names --content-disposition "https://civitai.com/api/download/models/197181" # Epicphotoasm
#    fi
#    if [[ ! -e "cyberrealistic_classicV20.safetensors" ]]; then
#        wget --trust-server-names --content-disposition "https://civitai.com/api/download/models/165271" # CyberRealistic Classic 2.0
#    fi
#    if [[ ! -e "cyberrealistic_v40.safetensors" ]]; then
#        wget --trust-server-names --content-disposition "https://civitai.com/api/download/models/198401" # CyberRealistic 4.0
#    fi
#    if [[ ! -e "realisticVisionV51_v51VAE.safetensors" ]]; then
#         wget --trust-server-names --content-disposition "https://civitai.com/api/download/models/130072" # RealisticVision V5.1
#    fi
#    if [[ ! -e "analogMadness_v60.safetensors" ]]; then
#        wget --trust-server-names --content-disposition "https://civitai.com/api/download/models/160495" # AnalogMadness V6.0
#    fi
#    if [[ ! -e "aZovyaPhotoreal_v2.safetensors" ]]; then
#        wget --trust-server-names --content-disposition "https://civitai.com/api/download/models/99805" # A-Zovya Photoreal V2
#    fi
#    if [[ ! -e "epicrealism_naturalSin.safetensors" ]]; then
#        wget --trust-server-names --content-disposition "https://civitai.com/api/download/models/160989" # epiCRealism Natural Sin
#    fi
#
#
#    # # sd_xl_base_1
#    # model_file=${sd_models_dir}/sd_xl_base_1.0.safetensors
#    # model_url=https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors
#    
#    # if [[ ! -e ${model_file} ]]; then
#    #     printf "Downloading Stable Diffusion XL base...\n"
#    #     download ${model_url} ${model_file} 
#    # fi
#    
#    # # sd_xl_refiner_1
#    # model_file=${sd_models_dir}/sd_xl_refiner_1.0.safetensors
#    # model_url=https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors
#    
#    # if [[ ! -e ${model_file} ]]; then
#    #     printf "Downloading Stable Diffusion XL refiner...\n"
#    #     download ${model_url} ${model_file}
#    # fi
#else
#        printf "\nSkipping extra models (disk < 30GB)\n"
#fi
#printf "Downloading a few pruned controlnet models...\n"
#
#model_file=${cn_models_dir}/control_canny-fp16.safetensors
#model_url=https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors
#
#if [[ ! -e ${model_file} ]]; then
#    printf "Downloading Canny...\n"
#    download ${model_url} ${model_file}
#fi
#
#model_file=${cn_models_dir}/control_depth-fp16.safetensors
#model_url=https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors
#
#if [[ ! -e ${model_file} ]]; then
#    printf "Downloading Depth...\n"
#    download ${model_url} ${model_file}
#fi
#
#model_file=${cn_models_dir}/control_openpose-fp16.safetensors
#model_url=https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors
#
#if [[ ! -e ${model_file} ]]; then
#    printf "Downloading Openpose...\n"
#    download ${model_url} ${model_file}
#fi
#
#model_file=${cn_models_dir}/control_scribble-fp16.safetensors
#model_url=https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors
#
#if [[ ! -e ${model_file} ]]; then
#    printf "Downloading Scribble...\n"
#    download ${model_url} ${model_file}
#fi
#
#printf "Downloading VAE...\n"
#
#model_file=${vae_models_dir}/vae-ft-ema-560000-ema-pruned.safetensors
#model_url=https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors
#
#if [[ ! -e ${model_file} ]]; then
#    printf "Downloading vae-ft-ema-560000-ema...\n"
#    download ${model_url} ${model_file}
#fi
#
#model_file=${vae_models_dir}/vae-ft-mse-840000-ema-pruned.safetensors
#model_url=https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors
#
#if [[ ! -e ${model_file} ]]; then
#    printf "Downloading vae-ft-mse-840000-ema...\n"
#    download ${model_url} ${model_file}
#fi
#
## model_file=${vae_models_dir}/sdxl_vae.safetensors
## model_url=https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors
#
## if [[ ! -e ${model_file} ]]; then
##     printf "Downloading sdxl_vae...\n"
##     download ${model_url} ${model_file}
## fi
#
#printf "Downloading Upscalers...\n"
#
#model_file=${upscale_models_dir}/4x_foolhardy_Remacri.pth
#model_url=https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth
#
#if [[ ! -e ${model_file} ]]; then
#    printf "Downloading 4x_foolhardy_Remacri...\n"
#    download ${model_url} ${model_file}
#fi
#
#model_file=${upscale_models_dir}/4x_NMKD-Siax_200k.pth
#model_url=https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth
#
#if [[ ! -e ${model_file} ]]; then
#    printf "Downloading 4x_NMKD-Siax_200k...\n"
#    download ${model_url} ${model_file}
#fi
#
#model_file=${upscale_models_dir}/RealESRGAN_x4.pth
#model_url=https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth
#
#if [[ ! -e ${model_file} ]]; then
#    printf "Downloading RealESRGAN_x4...\n"
#    download ${model_url} ${model_file}
#fi
#
#model_file=${upscale_models_dir}/4x_NMKD-Superscale-SP_178000_G.pthh
#model_url=https://huggingface.co/gemasai/4x_NMKD-Superscale-SP_178000_G/resolve/main/4x_NMKD-Superscale-SP_178000_G.pth
#
#if [[ ! -e ${model_file} ]]; then
#    printf "Downloading 4x_NMKD-Superscale-SP_178000_G...\n"
#    download ${model_url} ${model_file}
#fi
#
#model_file=${upscale_models_dir}/8x_NMKD-Superscale_150000_G.pth
#model_url=https://huggingface.co/uwg/upscaler/resolve/main/ESRGAN/8x_NMKD-Superscale_150000_G.pth
#
#if [[ ! -e ${model_file} ]]; then
#    printf "Downloading 8x_NMKD-Superscale_150000_G...\n"
#    download ${model_url} ${model_file}
#fi

printf "\nProvisioning complete:  Web UI will start now\n\n"


