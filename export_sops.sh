SOPS_AGE_KEY_FILE=$(pwd)/age-key.txt
SOPS_AGE_RECIPIENTS="$(cat age-key.txt | grep 'public key' | grep -Eo '[a-zA-Z0-9]+$$')"

set -x

export SOPS_AGE_KEY_FILE=$SOPS_AGE_KEY_FILE
export SOPS_AGE_RECIPIENTS=$SOPS_AGE_RECIPIENTS

set +x