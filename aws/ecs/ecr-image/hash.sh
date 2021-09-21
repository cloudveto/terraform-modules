set -e
source_path=${1:-.}
file_hashes="$(
    cd "$source_path" \
    && find -s . -type f -not -name '*.pyc' -not -path './.**' -exec md5sum {} \;
)"
hash="$(echo "$file_hashes" | md5sum | cut -d' ' -f1)"
echo '{ "hash": "'"$hash"'" }'