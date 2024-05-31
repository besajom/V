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
BZh91AY&SY.�2�  �߀|����� ����P�F�lb
� $�`�SF$?Sѐ�F��I��2hdh2 �)�j���h�P   d ���mS4���A�#F�ڍ��   �0�b �L�F�h�h ��C@ ��������.�k�8۱�1�˾�0����T�����U鎙;�8�Ӟ��j�:�E�N��~�Ԕ�3a�el�AR�*"�l��_j���L>�A~Rec]��p���R"�G��,`T����&E�I`��,䪋�
)z��h��H(@z,����&>�b؊c�3��[{c�TJ��
��R���͍E�\�}�D�NA��q�gL9i�o����`z>���eEp�����ih���	!v���0�����"fs��F�`�2�����&Y���W�V��

�ќ�[�NE*�@�C��M*�����%6�N��#�A �H�k퉋"�c��:d3Nmx �_�G>sy��cƇ�2�ǌy��M*�2��BT�@�$�x�=F�wH>�y��҈ �:�".�Ѻ��������6c�5���&��9G�e��Գ�����)��D*E��4��e��M�*���K�G7��R��$�ylg�5)ɂO'�hO��^g��<�c��3 �C�\��o8jP��Ю�wo��J�
&�d�a�$%2z��݃�|.�=	�F�aR� ����ʁӦ��̺8G?<�q��~��3��I��갨Z�X�y�Ⱦ�7X��0�����e�
�(@+8��͆.�`$���C3����x����7Z�d�K[gA�o#s��;����_<�zݛ
�
9�7.O$��/~�o�3q�͡	(�݃T"̄.�L�" n�Nn�dj��ƫ�L�Ej�F\�~E�� �<2+̫1N25J7��ۺ8SV�2H�s^�N�`�(�q�o�r�D��w=*'r6��	BQ`b�,.ZDWP� _�����s�a�h�4�̢d�P���b���`�������B�3z��[�=��d�6ip�����x6b���FCd�� #q!!�[-lѮ��h\J�2�p���W�A& \Ia�I�T�����<�.A�.�����������|D$�A�i�0�`����XJ.���L���Ld-	DDD��xY> �ǨѴ� ����f�,=�ܩ3t���a�1��1��A� �)ӕ�yl�b�hf��&osM6a�$�a��0����2�����P��HI�]t� ���V[]u$ܠ�P�ƒ�p7��N�S	I�|���ؕ$G��ff�22B��@�e���\Xp[�9��T�q��=���F�۶��u'�x6:�a�x��ve������R�f��./N��Ջ�K�@�@����(͓��<Xҡ��2�&�a=�9��`o`y�8�s���w$S�	�3. 