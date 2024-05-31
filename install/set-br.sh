#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�)*  b߀@y�&e�����@�h  ��z���OS'�I�21C +T��S��4р�ɓ L���        D� I��S�554��=C'�H{T)HJ�ס�HG��w�8iM 8!M�	����.a'�w�Z��}���YM]ܿPv&)���	�o�� ��*0��[A�@�M���u~��B�% ���i�eh���h�*��'����t��#�1���l���z���9F��õ���\W��	�I7R�\�vm��.�Y�c�s��m�Gk���]�����*Ϛޯ��C���ma�ý��ՍW���V�F�^�Ãp�G��6�o8����~K�	�����Y���~:�BAX�����y�y�����c��B��J�Q�B��km�%|�U4���h������h>�>cLƷ�v7�׽�Ry����䁋�,��5���؞�����B"bd���"ݭ0J0����Y����4�؝�`����H����� �`0%��iB�P�L�׭�k���<�OSl�t>������c-�;Ǥ�C��RN�n�ccs��iRF�U�F4��������A��mx�h��:���j�n[��ŧZ�E�A�	�����E\����ܑN$/�D��