#!/data/data/com.termux/files/usr/bin/bash

echo "Iniciando git add, commit e push automático..."

# Vai pro diretório do repo (ajuste o caminho se precisar)
# Exemplo: cd /sdcard/Download/sshbox
# cd ~/sshbox   # ou o que for o seu repo no Termux

git add .

# Verifica se tem algo pra commitar
if [ -z "$(git status --porcelain)" ]; then
    echo "Nada mudou. Tudo atualizado!"
    exit 0
fi

# Commit com data/hora automática
git commit -m "Atualização automática: $(date '+%Y-%m-%d %H:%M:%S')"

# Push (assume branch main; mude pra master se for o caso)
git push origin main

echo "Pronto! Tudo enviado pro GitHub."