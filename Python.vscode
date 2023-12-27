# VSCode Setup

This configuration follows Google Design Pattern.

## Must have plugins
- ms-python.python
- ms-toolsai.jupyter
- ms-python.isort
- ms-python.pylint
- eeyore.yapf

## Good to have plugins
- visualstudioexptteam.vscodeintellicode
- visualstudioexptteam.intellicode-api-usage-examples
- christian-kohler.path-intellisense
- esbenp.prettier-vscode
- tyriar.sort-lines
- qwtel.sqlite-viewer
- eamodio.gitlens



## VSCode configuration

```json
{
    // must install plugins
    // ms-python.python, ms-python.isort, ms-python.pylint, eeyore.yapf
    "editor.tabSize": 2,
    "editor.insertSpaces": true,
    "files.autoSave": "afterDelay",
    "[python]": {
        "editor.defaultFormatter": "eeyore.yapf",
        "editor.formatOnSave": true,
        "editor.codeActionsOnSave": {
            "source.organizeImports": true
        },
        "editor.formatOnSaveMode": "file",
        "editor.formatOnType": false
    },
    "isort.args":["--profile", "google"],
    "notebook.formatOnCellExecution": true,
    "notebook.formatOnSave.enabled": true,
    "yapf.args": [
        "--style",
        "{based_on_style: google, indent_width: 2}"
    ],
    "yapf.cellMagics": ["matplotlib inline"]
    
}
```
