FasdUAS 1.101.10   ��   ��    k             i         I     �� 	��
�� .aevtoappnull  �   � **** 	 o      ���� 0 thequery theQuery��    k    � 
 
     r         c         o     ���� 0 thequery theQuery  m    ��
�� 
ctxt  o      ���� 0 thequery theQuery      l   ��������  ��  ��        r    	    m       �      o      ���� 0 
theaccount 
theAccount      r   
     m   
    �      o      ���� 0 
themailbox 
theMailbox       Z    0 ! "�� # ! E     $ % $ o    ���� 0 thequery theQuery % m     & & � ' '  : " r    * ( ) ( I      �� *���� 0 stringsplit StringSplit *  + , + o    ���� 0 thequery theQuery ,  -�� - m     . . � / /  :��  ��   ) J       0 0  1 2 1 o      ���� 0 
theaccount 
theAccount 2  3�� 3 o      ���� 0 
themailbox 
theMailbox��  ��   # r   - 0 4 5 4 o   - .���� 0 thequery theQuery 5 o      ���� 0 
theaccount 
theAccount    6 7 6 l  1 1��������  ��  ��   7  8 9 8 l  1 1�� : ;��   : ) # Load json script for Script Filter    ; � < < F   L o a d   j s o n   s c r i p t   f o r   S c r i p t   F i l t e r 9  = > = r   1 = ? @ ? 4   1 ;�� A
�� 
psxf A l  3 : B���� B b   3 : C D C l  3 8 E���� E I  3 8�� F��
�� .sysoexecTEXT���     TEXT F m   3 4 G G � H H  p w d��  ��  ��   D m   8 9 I I � J J  / j s o n . s c p t��  ��   @ o      ���� 0 thejsonpath theJsonPath >  K L K r   > I M N M I  > E�� O��
�� .sysoloadscpt        file O c   > A P Q P o   > ?���� 0 thejsonpath theJsonPath Q m   ? @��
�� 
alis��   N o      ���� 0 json   L  R S R l  J J��������  ��  ��   S  T U T l  J Q V W X V I  J Q�� Y��
�� .sysoexecTEXT���     TEXT Y m   J M Z Z � [ [ D m k d i r   - p   " $ { a l f r e d _ w o r k f l o w _ d a t a } "��   W 0 * create WF data directory if not available    X � \ \ T   c r e a t e   W F   d a t a   d i r e c t o r y   i f   n o t   a v a i l a b l e U  ] ^ ] l  R ` _ ` a _ r   R ` b c b 4   R \�� d
�� 
psxf d l  T [ e���� e I  T [�� f��
�� .sysoexecTEXT���     TEXT f m   T W g g � h h 4 e c h o   $ a l f r e d _ w o r k f l o w _ d a t a��  ��  ��   c o      ���� 0 
thedatadir 
theDataDir `   get WF data directory    a � i i ,   g e t   W F   d a t a   d i r e c t o r y ^  j k j l  a n l m n l r   a n o p o c   a j q r q b   a h s t s o   a d���� 0 
thedatadir 
theDataDir t m   d g u u � v v  : m a i l b o x . t x t r m   h i��
�� 
ctxt p o      ����  0 themailboxfile theMailboxFile m   Project Data file Path    n � w w .   P r o j e c t   D a t a   f i l e   P a t h k  x y x l  o o��������  ��  ��   y  z { z l  o o�� | }��   |  -----------------    } � ~ ~ " - - - - - - - - - - - - - - - - - {   �  l  o o�� � ���   �   Read mailbox config    � � � � (   R e a d   m a i l b o x   c o n f i g �  � � � l  o o�� � ���   �  -----------------    � � � � " - - - - - - - - - - - - - - - - - �  � � � r   o u � � � J   o q����   � o      ���� $0 themailboxconfig theMailboxConfig �  � � � Q   v � � � � � r   y � � � � n   y � � � � 2  � ���
�� 
cpar � l  y � ����� � I  y ��� ���
�� .rdwrread****        **** � 4   y ��� �
�� 
file � o   } �����  0 themailboxfile theMailboxFile��  ��  ��   � o      ���� $0 themailboxconfig theMailboxConfig � R      ������
�� .ascrerr ****      � ****��  ��   � r   � � � � � J   � �����   � o      ���� $0 themailboxconfig theMailboxConfig �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � J   � �����   � o      ���� 0 theitems theItems �  � � � l  � ���������  ��  ��   �  � � � Z   �� � ��� � � >  � � � � � o   � ����� 0 
theaccount 
theAccount � m   � � � � � � �   � k   �# � �  � � � r   � � � � � n  � � � � � I   � ��� �����  0 createdictwith createDictWith �  ��� � J   � � � �  ��� � J   � � � �  � � � m   � � � � � � � 
 t i t l e �  ��� � b   � � � � � b   � � � � � o   � ����� 0 
theaccount 
theAccount � m   � � � � � � �  : � o   � ����� 0 
themailbox 
theMailbox��  ��  ��  ��   � o   � ����� 0 json   � o      ���� 0 theitem theItem �  � � � n  � � � � � I   � ��� ����� 	0 setkv   �  � � � m   � � � � � � �  s u b t i t l e �  ��� � m   � � � � � � �  A d d   e n t r y��  ��   � o   � ����� 0 theitem theItem �  � � � n  � � � � � I   � ��� ����� 	0 setkv   �  � � � m   � � � � � � �  a r g �  ��� � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  a d d : � o   � ����� 0 
theaccount 
theAccount � m   � � � � � � �  : � o   � ����� 0 
themailbox 
theMailbox��  ��   � o   � ����� 0 theitem theItem �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n  � � � � � I   � ��� �����  0 createdictwith createDictWith �  ��� � J   � � � �  ��� � J   � � � �  � � � m   � � � � � � �  t y p e �  ��� � m   � � � � � � � 
 i m a g e��  ��  ��  ��   � o   � ����� 0 json   � o      ���� 0 theicon theIcon �  � � � n  � � � � I  �� ����� 	0 setkv   �  � � � m   � � � � �  p a t h �  ��  m   �  a d d . p n g��  ��   � o   ����� 0 theicon theIcon �  n  I  ������ 	0 setkv   	 m  

 �  i c o n	 �� o  ���� 0 theicon theIcon��  ��   o  ���� 0 theitem theItem  l ��������  ��  ��   �� r  # o  ���� 0 theitem theItem n        ;  !" o  !�� 0 theitems theItems��  ��   � k  &�  r  &; n &7 I  )7�~�}�~  0 createdictwith createDictWith �| J  )3 �{ J  )1  !  m  ),"" �## 
 t i t l e! $�z$ m  ,/%% �&& 4 E n t e r   M a i l c o n f i g u r a t i o n . . .�z  �{  �|  �}   o  &)�y�y 0 json   o      �x�x 0 theitem theItem '(' n <I)*) I  ?I�w+�v�w 	0 setkv  + ,-, m  ?B.. �//  s u b t i t l e- 0�u0 m  BE11 �22 8   F o r m a t :   < A c c o u n t > : < M a i l b o x >�u  �v  * o  <?�t�t 0 theitem theItem( 343 n JW565 I  MW�s7�r�s 	0 setkv  7 898 m  MP:: �;;  a r g9 <�q< m  PS== �>>  �q  �r  6 o  JM�p�p 0 theitem theItem4 ?@? n XcABA I  [c�oC�n�o 	0 setkv  C DED m  [^FF �GG 
 v a l i dE H�mH m  ^_�l
�l boovfals�m  �n  B o  X[�k�k 0 theitem theItem@ IJI l dd�j�i�h�j  �i  �h  J KLK r  dyMNM n duOPO I  gu�gQ�f�g  0 createdictwith createDictWithQ R�eR J  gqSS T�dT J  goUU VWV m  gjXX �YY  t y p eW Z�cZ m  jm[[ �\\ 
 i m a g e�c  �d  �e  �f  P o  dg�b�b 0 json  N o      �a�a 0 theicon theIconL ]^] n z�_`_ I  }��`a�_�` 	0 setkv  a bcb m  }�dd �ee  p a t hc f�^f m  ��gg �hh  q u e s t i o n . p n g�^  �_  ` o  z}�]�] 0 theicon theIcon^ iji n ��klk I  ���\m�[�\ 	0 setkv  m non m  ��pp �qq  i c o no r�Zr o  ���Y�Y 0 theicon theIcon�Z  �[  l o  ���X�X 0 theitem theItemj sts l ���W�V�U�W  �V  �U  t u�Tu r  ��vwv o  ���S�S 0 theitem theItemw n      xyx  ;  ��y o  ���R�R 0 theitems theItems�T   � z{z l ���Q�P�O�Q  �P  �O  { |}| Z  �g~�N�M~ ? ����� n  ����� 1  ���L
�L 
leng� o  ���K�K $0 themailboxconfig theMailboxConfig� m  ���J�J   X  �c��I�� Z  �^���H�G� E  ����� o  ���F�F 0 c  � m  ���� ���  :� k  �Z�� ��� r  ����� I      �E��D�E 0 stringsplit StringSplit� ��� o  ���C�C 0 c  � ��B� m  ���� ���  :�B  �D  � J      �� ��� o      �A�A 0 
theaccount 
theAccount� ��@� o      �?�? 0 
themailbox 
theMailbox�@  � ��� l ���>���>  � 1 +			set theAccount to item 1 of theValuePair   � ��� V 	 	 	 s e t   t h e A c c o u n t   t o   i t e m   1   o f   t h e V a l u e P a i r� ��� l ���=���=  � 1 +			set theMailbox to item 2 of theValuePair   � ��� V 	 	 	 s e t   t h e M a i l b o x   t o   i t e m   2   o f   t h e V a l u e P a i r� ��� l ���<�;�:�<  �;  �:  � ��� l ���9�8�7�9  �8  �7  � ��� l ���6�5�4�6  �5  �4  � ��� r  ����� n ����� I  ���3��2�3  0 createdictwith createDictWith� ��1� J  ���� ��0� J  ���� ��� m  ���� ��� 
 t i t l e� ��/� b  ����� b  ����� o  ���.�. 0 
theaccount 
theAccount� m  ���� ���  :� o  ���-�- 0 
themailbox 
theMailbox�/  �0  �1  �2  � o  ���,�, 0 json  � o      �+�+ 0 theitem theItem� ��� n ���� I  ��*��)�* 	0 setkv  � ��� m  � �� ���  s u b t i t l e� ��(� m   �� ���  D e l e t e   e n t r y�(  �)  � o  ���'�' 0 theitem theItem� ��� n ��� I  �&��%�& 	0 setkv  � ��� m  �� ���  a r g� ��$� b  ��� b  ��� b  ��� m  �� ���  d e l e t e :� o  �#�# 0 
theaccount 
theAccount� m  �� ���  :� o  �"�" 0 
themailbox 
theMailbox�$  �%  � o  �!�! 0 theitem theItem� ��� l � ���   �  �  � ��� r  3��� n /��� I  !/����  0 createdictwith createDictWith� ��� J  !+�� ��� J  !)�� ��� m  !$�� ���  t y p e� ��� m  $'�� ��� 
 i m a g e�  �  �  �  � o  !�� 0 json  � o      �� 0 theicon theIcon� ��� n 4A��� I  7A���� 	0 setkv  � ��� m  7:�� ���  p a t h� ��� m  :=�� �    d e l e t e . p n g�  �  � o  47�� 0 theicon theIcon�  n BO I  EO��� 	0 setkv    m  EH �		  i c o n 
�
 o  HK�� 0 theicon theIcon�  �   o  BE�� 0 theitem theItem  l PP����  �  �    r  PX o  PS�
�
 0 theitem theItem n        ;  VW o  SV�	�	 0 theitems theItems � l YY����  �  �  �  �H  �G  �I 0 c  � o  ���� $0 themailboxconfig theMailboxConfig�N  �M  }  l hh����  �  �    l hh� �    2 , Create root items object and encode to JSON    � X   C r e a t e   r o o t   i t e m s   o b j e c t   a n d   e n c o d e   t o   J S O N  r  hs n ho  I  ko�������� 0 
createdict 
createDict��  ��    o  hk���� 0 json   o      ���� 0 itemdict itemDict !"! n t�#$# I  w���%���� 	0 setkv  % &'& m  wz(( �)) 
 i t e m s' *��* o  z}���� 0 theitems theItems��  ��  $ o  tw���� 0 itemdict itemDict" +,+ l ����������  ��  ��  , -.- L  ��// n ��010 I  ����2���� 
0 encode  2 3��3 o  ������ 0 itemdict itemDict��  ��  1 o  ������ 0 json  . 4��4 l ����������  ��  ��  ��    565 l     ��������  ��  ��  6 787 l      ��9:��  9 � � ================================================================
FUNTION: Splits a String with a given delimiter
RETURNS: List of String  (List)
==================================================================   : �;;�   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   S p l i t s   a   S t r i n g   w i t h   a   g i v e n   d e l i m i t e r 
 R E T U R N S :   L i s t   o f   S t r i n g     ( L i s t ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =8 <=< i    >?> I      ��@���� 0 stringsplit StringSplit@ ABA o      ���� 0 	thestring 	theStringB C��C o      ���� 0 thedelimiter theDelimiter��  ��  ? k     DD EFE l     ��GH��  G . ( save delimiters to restore old settings   H �II P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g sF JKJ r     LML n    NON 1    ��
�� 
txdlO 1     ��
�� 
ascrM o      ���� 0 olddelimiters oldDelimitersK PQP l   ��RS��  R - ' set delimiters to delimiter to be used   S �TT N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e dQ UVU r    WXW o    ���� 0 thedelimiter theDelimiterX n     YZY 1    
��
�� 
txdlZ 1    ��
�� 
ascrV [\[ l   ��]^��  ]   create the array   ^ �__ "   c r e a t e   t h e   a r r a y\ `a` r    bcb n    ded 2    ��
�� 
citme o    ���� 0 	thestring 	theStringc o      ���� 0 thearray theArraya fgf l   ��hi��  h   restore the old setting   i �jj 0   r e s t o r e   t h e   o l d   s e t t i n gg klk r    mnm o    ���� 0 olddelimiters oldDelimitersn n     opo 1    ��
�� 
txdlp 1    ��
�� 
ascrl qrq l   ��st��  s   return the result   t �uu $   r e t u r n   t h e   r e s u l tr v��v L    ww o    ���� 0 thearray theArray��  = xyx l     ��������  ��  ��  y z{z l      ��|}��  | � � ================================================================
FUNTION: Log message to logger
RETURNS: -
==================================================================   } �~~\   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   L o g   m e s s a g e   t o   l o g g e r 
 R E T U R N S :   - 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = ={ �� i    ��� I     �����
�� .ascrcmnt****      � ****� l     ������ o      ���� 0 thelog theLog��  ��  ��  � k     �� ��� O    ��� r    ��� c    	��� n    ��� 1    ��
�� 
pnam�  f    � m    ��
�� 
ctxt� o      ���� 0 myname myName� m     ���                                                                                  MACS  alis    .  SSD                            BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  � ���� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    ��� b    ��� b    ��� m    �� ��� . l o g g e r   - t   ' A S   D E B U G '   ' [� o    ���� 0 myname myName� m    �� ���  ] :  � o    ���� 0 thelog theLog� m    �� ���  '��  ��  ��       ��������  � ������
�� .aevtoappnull  �   � ****�� 0 stringsplit StringSplit
�� .ascrcmnt****      � ****� �� ��������
�� .aevtoappnull  �   � ****�� 0 thequery theQuery��  � ������ 0 thequery theQuery�� 0 c  � O�� �� �� & .������ G�� I�������� Z g�� u���������������� � � ����� � ��� � � � � ��� �
"%.1:=FX[dgp�����������������������(��
�� 
ctxt�� 0 
theaccount 
theAccount�� 0 
themailbox 
theMailbox�� 0 stringsplit StringSplit
�� 
cobj
�� 
psxf
�� .sysoexecTEXT���     TEXT�� 0 thejsonpath theJsonPath
�� 
alis
�� .sysoloadscpt        file�� 0 json  �� 0 
thedatadir 
theDataDir��  0 themailboxfile theMailboxFile�� $0 themailboxconfig theMailboxConfig
�� 
file
�� .rdwrread****        ****
�� 
cpar��  ��  �� 0 theitems theItems��  0 createdictwith createDictWith�� 0 theitem theItem�� 	0 setkv  �� 0 theicon theIcon
�� 
leng
�� 
kocl
�� .corecnte****       ****�� 0 
createdict 
createDict�� 0 itemdict itemDict�� 
0 encode  �����&E�O�E�O�E�O�� *��l+ E[�k/E�Z[�l/E�ZY �E�O*��j �%/E�O��&j E` Oa j O*�a j /E` O_ a %�&E` OjvE` O *a _ /j a -E` W X  jvE` OjvE` O�a  }_ a �a %�%lvkvk+  E` !O_ !a "a #l+ $O_ !a %a &�%a '%�%l+ $O_ a (a )lvkvk+  E` *O_ *a +a ,l+ $O_ !a -_ *l+ $O_ !_ 6FY z_ a .a /lvkvk+  E` !O_ !a 0a 1l+ $O_ !a 2a 3l+ $O_ !a 4fl+ $O_ a 5a 6lvkvk+  E` *O_ *a 7a 8l+ $O_ !a 9_ *l+ $O_ !_ 6FO_ a :,j � �_ [a ;�l <kh �a = �*�a >l+ E[�k/E�Z[�l/E�ZO_ a ?�a @%�%lvkvk+  E` !O_ !a Aa Bl+ $O_ !a Ca D�%a E%�%l+ $O_ a Fa Glvkvk+  E` *O_ *a Ha Il+ $O_ !a J_ *l+ $O_ !_ 6FOPY h[OY�[Y hO_ j+ KE` LO_ La M_ l+ $O_ _ Lk+ NOP� ��?���������� 0 stringsplit StringSplit�� ����� �  ������ 0 	thestring 	theString�� 0 thedelimiter theDelimiter��  � ���������� 0 	thestring 	theString�� 0 thedelimiter theDelimiter�� 0 olddelimiters oldDelimiters�� 0 thearray theArray� ������
�� 
ascr
�� 
txdl
�� 
citm�� ��,E�O���,FO��-E�O���,FO�� �����������
�� .ascrcmnt****      � ****�� 0 thelog theLog��  � ������ 0 thelog theLog�� 0 myname myName� ���~����}
� 
pnam
�~ 
ctxt
�} .sysoexecTEXT���     TEXT�� � 	)�,�&E�UO�%�%�%�%j ascr  ��ޭ