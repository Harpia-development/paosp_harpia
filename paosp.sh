# Clean up existing files if present

rm -rf  'paosp_harpia'
rm 'paosp.sh' 'harpia.xml' 'magic.sh' 'README.md'

echo "Fetching random shit"
git clone 'https://github.com/Harpia-development/paosp_harpia'
cd paosp_harpia
cp * ../
cd ../
echo "Time for some magic"
bash magic.sh
