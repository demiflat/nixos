{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    python312Packages.catboost
    python312Packages.ipykernel
    python312Packages.jupyter
    python312Packages.jupyter-core    
    python312Packages.kaggle
    python312Packages.lightgbm
    python312Packages.matplotlib
    python312Packages.notebook
    python312Packages.numpy
    python312Packages.pandas
    python312Packages.pre-commit-hooks
    python312Packages.requests
    python312Packages.scikit-learn
    python312Packages.seaborn
    python312Packages.tensorboard
    python312Packages.torchaudio
    python312Packages.torchvision
    python312Packages.torchWithRocm
    python312Packages.tqdm
    python312Packages.venvShellHook
    python312Packages.wandb
    python312Packages.xgboost
  ];
}    