# Linux Setup - Fedora 34


```shell
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install gh
```

## Code + co

```shell
sudo dnf install gcc-c++
```

## ZSH

```shell
/bin/zsh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```


### Config Files

```shell
rm ~/.zshrc
ln -s ~/.dotfiles/.zshrc-linux ~/.zshrc
```


## Tools

### Python

```shell
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

pyenv install 3.9.6
pyenv global 3.9.6
```

### Node

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
```


### Go

```shell
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

```


### k8s

```shell
sudo dnf install kubernetes-client
```
    

## Cloud Tools

```shell
# gcp
curl https://sdk.cloud.google.com | bash
exec -l $SHELL

gcloud init

# heroku
brew tap heroku/brew
brew install heroku

heroku login

# aws
#pip install --user awscli
#pip install --user s3cmd

sudo dnf install \
  awscli \
  s3cmd

aws configure

# azure
brew install azure-cli

az login
```



### Databases & Co

```shell
sudo dnf install postgresql postgresql-server
sudo dnf pgcli
sudo postgresql-setup initdb
sudo systemctl start postgresql
```

```shell
sudo -u postgres psql
```

```postgresql
CREATE ROLE ohrstrom WITH SUPERUSER LOGIN;
```

### Docker 

```shell
sudo grubby --update-kernel=ALL --args="systemd.unified_cgroup_hierarchy=0"
```