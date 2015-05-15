source $(dirname $(dirname $0))/lib/utils.sh

package_name=$1
source_url=$2
source_path=$(get_source_path $package_name)

mkdir -p $(asdf_dir)/sources
git clone $source_url $source_path
if [ $? -eq 0 ]
then
  chmod +x $source_path/bin/*
fi