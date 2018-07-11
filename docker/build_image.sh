# copy the iptmnet api executable
cp ./../target/release/iptmnet_api ./

# copy oracle instant client rpms
rm -r ./oracle
mkdir ./oracle
cp -r ./../oracle/* ./oracle/

# build the iptmnet api images
docker build --no-cache . -t udelcbcb/iptmnet_api:1.1.7

