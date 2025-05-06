name="aqute-bnd"
cd "${outdir:-.}"
git clone https://src.fedoraproject.org/rpms/"$name".git
pushd "$name"
sed -i 's/%bcond_with\s+bootstrap/%bcond_without\sbootstrap/' "$name".spec
bash -x generate-tarball.sh
popd
mv "$name"/* ./

