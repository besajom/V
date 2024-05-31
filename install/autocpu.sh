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
BZh91AY&SYI�� Y_�!x���?�������@D@  P��54 �)��M*~���S��6��i�4��i�i�j $�̚hd 1@0@�F� 2��F���         hs&� FA�L1 Ѧ���$� &�4�=@S�b�'���C��243Q�����1�9���p�h��}��Ģ*X�<�T�S�Js�d��^�>@�aW��EY1XH�J��� �����u�1��U�?g����5�EDE�:�����?�!<�����g=�96��^��a��]��6#1b�t��"SA�P�۠�̼ښ��Qf�ˊ3�oҽ����.���Uqm�Z��Da�`]�<A8�'D`��Ξ�p<Γ���	��0���hY���.6B�[:����5aٳ�l��]lBخ��D7�n_�f$$0�[�lȀ9i�� �#6 ��M��	�FaM�s��mֿw�;�d�TȘē,f
��3#�$�l��W=j ����̣q:1�f�4x]�"9�s8�S\{�#�R��z=� $1zN9�x9|��LTO9i y����E'*��T��ĠLD�}#�/*h��e�^�y�#j}��j蔾��@61.�i����N��T�D��`L��l^�{|z\B��u�(�b21��;�v��^[��{c^�s�J�7k)�S��f�C5@s2�al��Q<�7�`s40�q�!�qg�Z��S4�����u�'��=4= �z��m��U+�9�	R�K��;�w��TwG�o+���)��|g��Ƒ��G��{�|a��I�0�Tt��Ԙ�)m�Y�+�.Vy���0GZd�N�p=(�0d�	�<%|�{�T�B���?!�K�\FTmڮ1����h}5w�	
��Z,�A�'F�4�\ܩ���I�ZM\o ҙ"B���L�,VS���Z�p��U����A$�$���H!�$V�C�c:@\d���l�A<�P1e8��n��LH�FL�������-$� �b��/�C1:-1����
�'�2=��+�%�ֈ��Z���0�/(�duV`��>�p���0FtZ�XT��iL����/5�	�u�]��:��z�IsnZ�����p4E���X(E-�R�H�)Оq*��y�&P=�M�+d[�M��Nd��7���&*'�YXlWx+�5�F�^,a�5�b��F[D����Z&e��V#�"�+�\QB�OR����y�H���Z��χ���Ȝ���a�$�Ҙ$\���3(߲�h0�0Á9)��'��a�<^Je@���T2�Y4�� %�@D.,� �
��<���ZTX$��pԋxP���P��)$R������2B?�K�8Z�C`E[L�" ���;!�F��KEL�S���e���0�( ��p$v|<�5w!�qŗ7�����P�� L?�z�� ����"�(H$�m� 