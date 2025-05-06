cd "${outdir:-.}"
git clone https://src.fedoraproject.org/rpms/aqute-bnd.git
pushd objectweb-asm
sed -i 's/%bcond_with\s+bootstrap/%bcond_without\sbootstrap/' aqute-bnd.spec
bash -x generate-tarball.sh
popd
mv aqute-bnd/* ./

