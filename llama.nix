{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    virtualenv
    python311Packages.virtualenv
    python311Packages.catboost
    python311Packages.ipykernel
    python311Packages.jupyter
    python311Packages.jupyter-core    
    python311Packages.kaggle
    python311Packages.lightgbm
    python311Packages.matplotlib
    python311Packages.notebook
    python311Packages.numpy
    python311Packages.pandas
    python311Packages.pre-commit-hooks
    python311Packages.protobuf
    python311Packages.requests
    python311Packages.sentencepiece
    python311Packages.scikit-learn
    python311Packages.seaborn
    python311Packages.tensorboard
    python311Packages.torchaudio
    python311Packages.torchvision
    python311Packages.torchWithRocm
    python311Packages.tqdm
    python311Packages.transformers
    python311Packages.venvShellHook
    python311Packages.wandb
    python311Packages.xgboost
  ];
}    
