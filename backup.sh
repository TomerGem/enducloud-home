#! /bin/sh

rm -rf account.bak3
mv account.bak2 account.bak3
mv account.bak1 account.bak2
cp -r account account.bak1
rm -rf athlete.bak3
mv athlete.bak2 athlete.bak3
mv athlete.bak1 athlete.bak2
cp -r athlete athlete.bak
