FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � � ================================================
mail2todoist.scpt generate Todosit task from an Email and Achrive the Email
================================================      � 	 	^   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 m a i l 2 t o d o i s t . s c p t   g e n e r a t e   T o d o s i t   t a s k   f r o m   a n   E m a i l   a n d   A c h r i v e   t h e   E m a i l 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =     
  
 i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 thequery theQuery��    k    X       l     ��  ��    , & READ CONFIG and Environment variables     �   L   R E A D   C O N F I G   a n d   E n v i r o n m e n t   v a r i a b l e s      l         r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        �   0 e c h o   $ d e s t i n a t i o n M a i l b o x��    o      ���� (0 destinationmailbox destinationMailbox  * $ if empty email will not be archived     �   H   i f   e m p t y   e m a i l   w i l l   n o t   b e   a r c h i v e d     !   l   �� " #��   " 0 * Prefixes to be removed from email subject    # � $ $ T   P r e f i x e s   t o   b e   r e m o v e d   f r o m   e m a i l   s u b j e c t !  % & % r     ' ( ' J     ) )  * + * m    	 , , � - -  r e :   +  . / . m   	 
 0 0 � 1 1 
 o d p :   /  2 3 2 m   
  4 4 � 5 5  f w :   3  6�� 6 m     7 7 � 8 8 
 f w d :  ��   ( o      ���� $0 prefixestoremove prefixesToRemove &  9 : 9 l   �� ; <��   ; U O Decide if you want to confirm name of created task. Defaut is message subject.    < � = = �   D e c i d e   i f   y o u   w a n t   t o   c o n f i r m   n a m e   o f   c r e a t e d   t a s k .   D e f a u t   i s   m e s s a g e   s u b j e c t . :  > ? > r     @ A @ m    ��
�� boovfals A o      ���� 0 askforthename askForTheName ?  B C B l   �� D E��   D , & Get todoist token from Workflow value    E � F F L   G e t   t o d o i s t   t o k e n   f r o m   W o r k f l o w   v a l u e C  G H G r     I J I I   �� K��
�� .sysoexecTEXT���     TEXT K m     L L � M M $ e c h o   $ t o d o i s t T o k e n��   J o      ���� 0 todoisttoken todoistToken H  N O N l   ��������  ��  ��   O  P Q P Z   � R S�� T R >     U V U o    ���� 0 todoisttoken todoistToken V m     W W � X X   S k   #{ Y Y  Z [ Z l  # ( \ ] ^ \ I  # (�� _��
�� .sysoexecTEXT���     TEXT _ m   # $ ` ` � a a D m k d i r   - p   " $ { a l f r e d _ w o r k f l o w _ d a t a } "��   ] 0 * create WF data directory if not available    ^ � b b T   c r e a t e   W F   d a t a   d i r e c t o r y   i f   n o t   a v a i l a b l e [  c d c l  ) 5 e f g e r   ) 5 h i h 4   ) 1�� j
�� 
psxf j l  + 0 k���� k I  + 0�� l��
�� .sysoexecTEXT���     TEXT l m   + , m m � n n 4 e c h o   $ a l f r e d _ w o r k f l o w _ d a t a��  ��  ��   i o      ���� 0 
thedatadir 
theDataDir f   get WF data directory    g � o o ,   g e t   W F   d a t a   d i r e c t o r y d  p q p l  6 E r s t r r   6 E u v u c   6 A w x w b   6 = y z y o   6 9���� 0 
thedatadir 
theDataDir z m   9 < { { � | |  : p r o j e c t . t x t x m   = @��
�� 
ctxt v o      ���� 0 thedatafile theDataFile s   Read Project Data file    t � } } .   R e a d   P r o j e c t   D a t a   f i l e q  ~  ~ l  F F�� � ���   � 4 .	log ("DataDir: " & POSIX path of theDataFile)    � � � � \ 	 l o g   ( " D a t a D i r :   "   &   P O S I X   p a t h   o f   t h e D a t a F i l e )   � � � l  F F��������  ��  ��   �  � � � l  F F�� � ���   �   Read Project Data file    � � � � .   R e a d   P r o j e c t   D a t a   f i l e �  � � � r   F L � � � J   F H����   � o      ����  0 theprojectdata theProjectData �  � � � Q   M z � � � � r   P d � � � n   P ` � � � 2  \ `��
�� 
cpar � l  P \ ����� � I  P \�� ���
�� .rdwrread****        **** � 4   P X�� �
�� 
file � o   T W���� 0 thedatafile theDataFile��  ��  ��   � o      ����  0 theprojectdata theProjectData � R      ������
�� .ascrerr ****      � ****��  ��   � k   l z � �  � � � r   l r � � � J   l n����   � o      ����  0 theprojectdata theProjectData �  ��� � I  s z�� ���
�� .ascrcmnt****      � **** � l  s v ����� � m   s v � � � � �  f i l e   e m p t y��  ��  ��  ��   �  � � � l  { {��������  ��  ��   �  � � � l  { {�� � ���   �   Read label data file     � � � � ,   R e a d   l a b e l   d a t a   f i l e   �  � � � r   { � � � � c   { � � � � b   { � � � � o   { ~���� 0 
thedatadir 
theDataDir � m   ~ � � � � � �  : l a b e l . t x t � m   � ���
�� 
ctxt � o      ���� 0 thedatafile theDataFile �  � � � r   � � � � � J   � �����   � o      ���� 0 thelabeldata theLabelData �  � � � Q   � � � � � � r   � � � � � n   � � � � � 2  � ���
�� 
cpar � l  � � ����� � I  � ��� ���
�� .rdwrread****        **** � 4   � ��� �
�� 
file � o   � ����� 0 thedatafile theDataFile��  ��  ��   � o      ���� 0 thelabeldata theLabelData � R      ������
�� .ascrerr ****      � ****��  ��   � k   � � � �  � � � r   � � � � � J   � �����   � o      ���� 0 thelabeldata theLabelData �  ��� � I  � ��� ���
�� .ascrcmnt****      � **** � l  � � ����� � m   � � � � � � �  f i l e   e m p t y��  ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � $  Get ProjectID from saved data    � � � � <   G e t   P r o j e c t I D   f r o m   s a v e d   d a t a �  � � � Z   �K � ��� � � >  � � � � � n   � � � � � 1   � ���
�� 
leng � o   � �����  0 theprojectdata theProjectData � m   � �����   � k   �; � �  � � � r   � � � � � I   � ��� ����� 0 stringsplit StringSplit �  � � � c   � � � � � o   � �����  0 theprojectdata theProjectData � m   � ���
�� 
ctxt �  ��� � m   � � � � � � �  |��  ��   � o      ���� $0 theprojectrecord theProjectRecord �  ��� � Q   �; � � � � k   �& � �  � � � l  � � � � � � r   � � � � � I   � ��� ����� 0 stringsplit StringSplit �  � � � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� $0 theprojectrecord theProjectRecord��  ��   �  ��� � m   � �   �  :��  ��   � o      ���� *0 theprojectnamearray theProjectNameArray � * $ Project Name, required for response    � � H   P r o j e c t   N a m e ,   r e q u i r e d   f o r   r e s p o n s e �  r   � n   �  4   � ��	
�� 
cobj	 m   � �����  o   � ����� *0 theprojectnamearray theProjectNameArray o      ���� 0 
theproject 
theProject 

 l ��������  ��  ��    l  r   I  ������ 0 stringsplit StringSplit  l ���� n   4  	��
�� 
cobj m  ����  o  	���� $0 theprojectrecord theProjectRecord��  ��   �� m   �  :��  ��   o      ���� &0 theprojectidarray theProjectIdArray   Project ID    �    P r o j e c t   I D �� r  &  n  "!"! 4  "�#
� 
cobj# m   !�~�~ " o  �}�} &0 theprojectidarray theProjectIdArray  o      �|�| 0 theprojectid theProjectId��   � R      �{�z�y
�{ .ascrerr ****      � ****�z  �y   � k  .;$$ %&% r  .3'(' m  ./�x�x  ( l     )�w�v) o      �u�u 0 	projectid 	ProjectId�w  �v  & *�t* r  4;+,+ m  47-- �..  , o      �s�s 0 
theproject 
theProject�t  ��  ��   � k  >K// 010 r  >C232 m  >?�r�r  3 o      �q�q 0 theprojectid theProjectId1 4�p4 r  DK565 m  DG77 �88 
 I N B O X6 o      �o�o 0 
theproject 
theProject�p   � 9:9 l LL�n�m�l�n  �m  �l  : ;<; l LL�k=>�k  = #  Get LabelID from daved data	   > �?? :   G e t   L a b e l I D   f r o m   d a v e d   d a t a 	< @A@ Z  L�BC�jDB > LUEFE n  LSGHG 1  OS�i
�i 
lengH o  LO�h�h 0 thelabeldata theLabelDataF m  ST�g�g  C k  X�II JKJ r  XkLML I  Xg�fN�e�f 0 stringsplit StringSplitN OPO c  Y`QRQ o  Y\�d�d 0 thelabeldata theLabelDataR m  \_�c
�c 
ctxtP S�bS m  `cTT �UU  |�b  �e  M o      �a�a  0 thelabelrecord theLabelRecordK VWV l ll�`�_�^�`  �_  �^  W X�]X Q  l�YZ[Y k  o�\\ ]^] l o�_`a_ r  o�bcb I  o�\d�[�\ 0 stringsplit StringSplitd efe l pxg�Z�Yg n  pxhih 4  sx�Xj
�X 
cobjj m  vw�W�W i o  ps�V�V  0 thelabelrecord theLabelRecord�Z  �Y  f k�Uk m  x{ll �mm  :�U  �[  c o      �T�T &0 thelabelnamearray theLabelNameArray` ) # Label Name, required for response    a �nn F   L a b e l   N a m e ,   r e q u i r e d   f o r   r e s p o n s e  ^ opo r  ��qrq n  ��sts 4  ���Su
�S 
cobju m  ���R�R t o  ���Q�Q &0 thelabelnamearray theLabelNameArrayr o      �P�P 0 thelabel theLabelp vwv l ���O�N�M�O  �N  �M  w xyx l ��z{|z r  ��}~} I  ���L�K�L 0 stringsplit StringSplit ��� l ����J�I� n  ����� 4  ���H�
�H 
cobj� m  ���G�G � o  ���F�F  0 thelabelrecord theLabelRecord�J  �I  � ��E� m  ���� ���  :�E  �K  ~ o      �D�D "0 thelabelidarray theLabelIdArray{  	 Label ID   | ���    L a b e l   I Dy ��C� r  ����� n  ����� 4  ���B�
�B 
cobj� m  ���A�A � o  ���@�@ "0 thelabelidarray theLabelIdArray� o      �?�? 0 
thelabelid 
theLabelId�C  Z R      �>�=�<
�> .ascrerr ****      � ****�=  �<  [ k  ���� ��� r  ����� m  ���� ���  � o      �;�; 0 
thelabelid 
theLabelId� ��:� r  ����� m  ���� ���  � o      �9�9 0 thelabel theLabel�:  �]  �j  D k  ���� ��� r  ����� m  ���� ���  � o      �8�8 0 
thelabelid 
theLabelId� ��7� r  ����� m  ���� ���  � o      �6�6 0 thelabel theLabel�7  A ��� l ���5�4�3�5  �4  �3  � ��� l ���2���2  � E ? Get due data language, Project and Label, if emtpy set default   � ��� ~   G e t   d u e   d a t a   l a n g u a g e ,   P r o j e c t   a n d   L a b e l ,   i f   e m t p y   s e t   d e f a u l t� ��� r  ����� c  ����� o  ���1�1 0 thequery theQuery� m  ���0
�0 
ctxt� o      �/�/ 0 thequery theQuery� ��� l ���.�-�,�.  �-  �,  � ��� l ���+���+  �   Extract Label from query   � ��� 2   E x t r a c t   L a b e l   f r o m   q u e r y� ��� Z  �:���*�)� E  ����� o  ���(�( 0 thequery theQuery� m  ���� ���  @� k  �6�� ��� r  ���� n  �	��� 7 �	�'��
�' 
ctxt� l ���&�%� [  ���� l ���$�#� I ��"�!�
�" .sysooffslong    ��� null�!  � � ��
�  
psof� m  ���� ���  @� ���
� 
psin� o  ���� 0 thequery theQuery�  �$  �#  � m  �� �&  �%  � m  ����� o  ���� 0 thequery theQuery� o      �� 0 
thesnippet 
theSnippet� ��� Z  6����� E  ��� o  �� 0 
thesnippet 
theSnippet� m  �� ���   � r  ,��� n  (��� 4  #(��
� 
cobj� m  &'�� � I  #���� 0 stringsplit StringSplit� ��� o  �� 0 
thesnippet 
theSnippet� ��� m  �� ���   �  �  � o      �� 0 thelabel theLabel�  � r  /6��� o  /2�� 0 
thesnippet 
theSnippet� o      �� 0 thelabel theLabel�  �*  �)  � ��� l ;;���
�  �  �
  � ��� l ;;�	���	  � !  Extract Project from query   � ��� 6   E x t r a c t   P r o j e c t   f r o m   q u e r y� ��� Z  ;������ E  ;@��� o  ;<�� 0 thequery theQuery� m  <?�� ���  #� k  C��� ��� r  Cd��� n  C`   7 D`�
� 
ctxt l J\�� [  J\ l KZ�� I KZ� ��
�  .sysooffslong    ��� null��   ��	

�� 
psof	 m  OR �  #
 ����
�� 
psin o  UV���� 0 thequery theQuery��  �  �   m  Z[���� �  �   m  ]_������ o  CD���� 0 thequery theQuery� o      ���� 0 
thesnippet 
theSnippet� �� Z  e��� E  el o  eh���� 0 
thesnippet 
theSnippet m  hk �    r  o� n  o 4  z��
�� 
cobj m  }~����  I  oz������ 0 stringsplit StringSplit  o  ps���� 0 
thesnippet 
theSnippet �� m  sv �     ��  ��   o      ���� 0 
theproject 
theProject��   r  ��!"! o  ������ 0 
thesnippet 
theSnippet" o      ���� 0 
theproject 
theProject��  �  �  � #$# l ����������  ��  ��  $ %&% l ����'(��  '   Due Date String Extract    ( �)) 2   D u e   D a t e   S t r i n g   E x t r a c t  & *+* r  ��,-, I ����.��
�� .sysoexecTEXT���     TEXT. b  ��/0/ b  ��121 m  ��33 �44  e c h o   "2 o  ������ 0 thequery theQuery0 m  ��55 �66 > "   |   s e d   - E   ' s / # [ A - Z a - z 0 - 9 ] + / / g '��  - o      ���� 0 theduestring theDueString+ 787 r  ��9:9 I ����;��
�� .sysoexecTEXT���     TEXT; b  ��<=< b  ��>?> m  ��@@ �AA  e c h o   "? o  ������ 0 theduestring theDueString= m  ��BB �CC > "   |   s e d   - E   ' s / @ [ A - Z a - z 0 - 9 ] + / / g '��  : o      ���� 0 theduestring theDueString8 DED l ����������  ��  ��  E FGF Z ��HI����H = ��JKJ c  ��LML o  ������ 0 theduestring theDueStringM m  ����
�� 
ctxtK m  ��NN �OO  I r  ��PQP m  ��RR �SS " t o m o r r o w   a t   1 0 : 0 0Q o      ���� 0 theduestring theDueString��  ��  G TUT l ����������  ��  ��  U VWV l ����������  ��  ��  W XYX l ����Z[��  Z 6 0 Get List of all available projects from Todoist   [ �\\ `   G e t   L i s t   o f   a l l   a v a i l a b l e   p r o j e c t s   f r o m   T o d o i s tY ]^] l ����_`��  _ + %-------------------------------------   ` �aa J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -^ bcb l ����������  ��  ��  c ded r  ��fgf b  ��hih b  ��jkj m  ��ll �mm � c u r l   - X   G E T   h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / p r o j e c t s   - H   " A u t h o r i z a t i o n :   B e a r e r  k o  ������ 0 todoisttoken todoistTokeni m  ��nn �oo  "g o      ���� 0 curl  e pqp l ��rstr r  ��uvu I ����w��
�� .sysoexecTEXT���     TEXTw o  ������ 0 curl  ��  v o      ����  0 theprojectjson theProjectJsons   get Json from response   t �xx .   g e t   J s o n   f r o m   r e s p o n s eq yzy l ����������  ��  ��  z {|{ l ����}~��  } ' ! read Todoist Json into Dictonary   ~ � B   r e a d   T o d o i s t   J s o n   i n t o   D i c t o n a r y| ��� O  ����� r  ����� I �������
�� .DfaBrEaDnull���     ****� o  ������  0 theprojectjson theProjectJson��  � o      ���� "0 thetodoistitems theTodoistItems� m  �����                                                                                  DfaB  alis    $  SSD                            BD ����JSON Helper.app                                                ����            ����  
 cu             Applications  /:Applications:JSON Helper.app/      J S O N   H e l p e r . a p p    S S D  Applications/JSON Helper.app  / ��  � ��� l ����������  ��  ��  � ��� X  �H����� k  C�� ��� r  #��� I  ������� 0 number_to_string  � ���� n  ��� o  ���� 0 id  � o  ���� 0 theitem theItem��  ��  � o      ���� 0 theid theId� ��� r  $-��� n  $)��� o  %)���� 0 name  � o  $%���� 0 theitem theItem� o      ���� 0 thename theName� ���� Z .C������� = .5��� o  .1���� 0 thename theName� o  14���� 0 
theproject 
theProject� r  8?��� o  8;���� 0 theid theId� o      ���� 0 theprojectid theProjectId��  ��  ��  �� 0 theitem theItem� o  ���� "0 thetodoistitems theTodoistItems� ��� l II��������  ��  ��  � ��� l II������  � , & Get List of all lablels from Tododist   � ��� L   G e t   L i s t   o f   a l l   l a b l e l s   f r o m   T o d o d i s t� ��� l II������  � % ------------------------------	   � ��� > - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	� ��� r  IV��� b  IR��� b  IN��� m  IL�� ��� � c u r l   - X   G E T   h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / l a b e l s   - H   " A u t h o r i z a t i o n :   B e a r e r  � o  LM���� 0 todoisttoken todoistToken� m  NQ�� ���  "� o      ���� 0 curl  � ��� l Wb���� r  Wb��� I W^�����
�� .sysoexecTEXT���     TEXT� o  WZ���� 0 curl  ��  � o      ���� 0 thelabeljson theLabelJson�   get Json from response   � ��� .   g e t   J s o n   f r o m   r e s p o n s e� ��� l cc��������  ��  ��  � ��� l cc������  � ' ! read Todoist Json into Dictonary   � ��� B   r e a d   T o d o i s t   J s o n   i n t o   D i c t o n a r y� ��� O  cu��� r  it��� I ip�����
�� .DfaBrEaDnull���     ****� o  il���� 0 thelabeljson theLabelJson��  � o      ���� "0 thetodoistitems theTodoistItems� m  cf���                                                                                  DfaB  alis    $  SSD                            BD ����JSON Helper.app                                                ����            ����  
 cu             Applications  /:Applications:JSON Helper.app/      J S O N   H e l p e r . a p p    S S D  Applications/JSON Helper.app  / ��  � ��� l vv��������  ��  ��  � ��� X  v������ k  ���� ��� r  ����� I  ��������� 0 number_to_string  � ���� n  ����� o  ������ 0 id  � o  ������ 0 theitem theItem��  ��  � o      ���� 0 theid theId� ��� r  ����� n  ����� o  ������ 0 name  � o  ������ 0 theitem theItem� o      ���� 0 thename theName� ���� Z ��������� = ����� o  ������ 0 thename theName� o  ������ 0 thelabel theLabel� r  ����� o  ������ 0 theid theId� o      ���� 0 
thelabelid 
theLabelId��  ��  ��  �� 0 theitem theItem� o  y|���� "0 thetodoistitems theTodoistItems� ��� l ������~��  �  �~  � ��� l ���}���}  � #  Handle Email from Apple Mail   � ��� :   H a n d l e   E m a i l   f r o m   A p p l e   M a i l� ��|� O  �{��� k  �z�� ��� I ���{�z�y
�{ .miscactvnull��� ��� null�z  �y  � ��� l ��� � r  �� e  �� 1  ���x
�x 
slct o      �w�w $0 selectedmessages selectedMessages  ) # get selected Message in Apple Mail    � F   g e t   s e l e c t e d   M e s s a g e   i n   A p p l e   M a i l�  l ���v	�v   ? 9 checks if a message was selected or bypass task creation   	 �

 r   c h e c k s   i f   a   m e s s a g e   w a s   s e l e c t e d   o r   b y p a s s   t a s k   c r e a t i o n �u Z  �z�t = �� l ���s�r I ���q�p
�q .corecnte****       **** o  ���o�o $0 selectedmessages selectedMessages�p  �s  �r   m  ���n�n   r  �� m  �� �  $ s e l e c t i o n o      �m�m 0 response  �t   k  �z  l �� r  �� n  ��  4 ���l!
�l 
cobj! m  ���k�k��  o  ���j�j $0 selectedmessages selectedMessages o      �i�i 0 
themessage 
theMessage $  we need only the last message    �"" <   w e   n e e d   o n l y   t h e   l a s t   m e s s a g e #$# l �%&'% r  �()( n  �*+* 1  ��h
�h 
subj+ o  ���g�g 0 
themessage 
theMessage) o      �f�f 0 thename theName& &   subject is the name of the task   ' �,, @   s u b j e c t   i s   t h e   n a m e   o f   t h e   t a s k$ -.- l /01/ r  232 n  454 1  	�e
�e 
sndr5 o  	�d�d 0 
themessage 
theMessage3 o      �c�c 0 	thesender 	theSender0 #  get the senders email adress   1 �66 :   g e t   t h e   s e n d e r s   e m a i l   a d r e s s. 787 l �b�a�`�b  �a  �`  8 9:9 l �_;<�_  ; * $ remove prefixes as configured above   < �== H   r e m o v e   p r e f i x e s   a s   c o n f i g u r e d   a b o v e: >?> X  P@�^A@ Z  &KBC�]�\B C  &+DED o  &)�[�[ 0 thename theNameE o  )*�Z�Z 
0 prefix  C r  .GFGF n  .CHIH 7 1C�YJK
�Y 
ctxtJ l 7?L�X�WL [  7?MNM m  89�V�V N l 9>O�U�TO n  9>PQP 1  :>�S
�S 
lengQ o  9:�R�R 
0 prefix  �U  �T  �X  �W  K m  @B�Q�Q��I o  .1�P�P 0 thename theNameG o      �O�O 0 thename theName�]  �\  �^ 
0 prefix  A o  �N�N $0 prefixestoremove prefixesToRemove? RSR l QQ�M�L�K�M  �L  �K  S TUT l QQ�JVW�J  V 1 + if confgured pop up dialog to change title   W �XX V   i f   c o n f g u r e d   p o p   u p   d i a l o g   t o   c h a n g e   t i t l eU YZY Z  Q�[\�I�H[ o  QR�G�G 0 askforthename askForTheName\ k  U�]] ^_^ r  Uf`a` I Ub�Fbc
�F .sysodlogaskr        TEXTb m  UXdd �ee  E n t e r   t a s k   n a m ec �Ef�D
�E 
dtxtf o  [^�C�C 0 thename theName�D  a 1      �B
�B 
rslt_ g�Ag Z  g�hi�@jh = grklk n  gnmnm 1  jn�?
�? 
bhitn 1  gj�>
�> 
rsltl m  nqoo �pp  O Ki r  u�qrq n  u|sts 1  x|�=
�= 
ttxtt 1  ux�<
�< 
rsltr o      �;�; 0 thename theName�@  j L  ���:�:  �A  �I  �H  Z uvu l ���9�8�7�9  �8  �7  v wxw l ���6yz�6  y e _ URL for Apple Mail Message, adding to the task note. Click in Todoist to open message in Mail.   z �{{ �   U R L   f o r   A p p l e   M a i l   M e s s a g e ,   a d d i n g   t o   t h e   t a s k   n o t e .   C l i c k   i n   T o d o i s t   t o   o p e n   m e s s a g e   i n   M a i l .x |}| r  ��~~ b  ����� b  ����� m  ���� ���  m e s s a g e : / / % 3 c� n ����� 1  ���5
�5 
meid� o  ���4�4 0 
themessage 
theMessage� m  ���� ���  % 3 e o      �3�3 0 theurl theURL} ��� l ���2�1�0�2  �1  �0  � ��� l ���/���/  � : 4 build content string including name, url and sender   � ��� h   b u i l d   c o n t e n t   s t r i n g   i n c l u d i n g   n a m e ,   u r l   a n d   s e n d e r� ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  [� o  ���.�. 0 thename theName� m  ���� ���  ] (� o  ���-�- 0 theurl theURL� m  ���� ��� 
 )   -   [� o  ���,�, 0 	thesender 	theSender� m  ���� ���  ]� o      �+�+ 0 
thecontent 
theContent� ��� l ���*�)�(�*  �)  �(  � ��� l ���'���'  � ( " genearte a uuid for task creation   � ��� D   g e n e a r t e   a   u u i d   f o r   t a s k   c r e a t i o n� ��� r  ����� I ���&��%
�& .sysoexecTEXT���     TEXT� m  ���� ���  u u i d g e n�%  � o      �$�$ 0 myuuid myUUID� ��� l ���#�"�!�#  �"  �!  � ��� l ��� ���   � U O build curl command based on API v8 beta. This may be changed by totodist later   � ��� �   b u i l d   c u r l   c o m m a n d   b a s e d   o n   A P I   v 8   b e t a .   T h i s   m a y   b e   c h a n g e d   b y   t o t o d i s t   l a t e r� ��� r  ���� b  ���� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� � c u r l   " h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / t a s k s "   - X   P O S T   - - d a t a   ' { " c o n t e n t " :   "� n ����� I  ������ "0 removecharacter RemoveCharacter� ��� o  ���� 0 
thecontent 
theContent� ��� m  ���� ���  '�  �  �  f  ��� m  ���� ��� $ " ,   " d u e _ s t r i n g " :   "� o  ���� 0 theduestring theDueString� m  ���� ��� ` " ,   " d u e _ l a n g " :   " e n " ,   " p r i o r i t y " :   4 , " p r o j e c t _ i d " :� o  ���� 0 theprojectid theProjectId� m  ���� ���  , " l a b e l _ i d s " : [� o  ���� 0 
thelabelid 
theLabelId� m  ���� ��� � ] , " c o m m e n t _ c o u n t " :   0 ,   " c o m p l e t e d " :   f a l s e } '   - H   " C o n t e n t - T y p e :   a p p l i c a t i o n / j s o n "   - H   " A u t h o r i z a t i o n :   B e a r e r  � o  ���� 0 todoisttoken todoistToken� m  ���� ��� ( "   - H   " X - R e q u e s t - I d :  � o  ���� 0 myuuid myUUID� m  ��� ���  "� o      �� 0 curl  � ��� l ����  �  �  � ��� l ����  � $  exec command and get response   � ��� <   e x e c   c o m m a n d   a n d   g e t   r e s p o n s e� ��� r  ��� I ���
� .sysoexecTEXT���     TEXT� o  �� 0 curl  �  � o      �� 0 response  � ��� l ����  �  log (response)   � �    l o g   ( r e s p o n s e )�  l ���
�  �  �
    l �	�	   J D finally if response results success id will be part of the response    � �   f i n a l l y   i f   r e s p o n s e   r e s u l t s   s u c c e s s   i d   w i l l   b e   p a r t   o f   t h e   r e s p o n s e 	 Z  x
�
 H   E   o  �� 0 response   m   � 
 " i d " : r  & m  " �  $ f a i l e d o      �� 0 response  �   k  )x  Z  )p�� > ). o  )*�� (0 destinationmailbox destinationMailbox m  *- �   X  1l�  k  Gg!! "#" l GG�$%�  $ &   Archive to destination mailbox    % �&& @   A r c h i v e   t o   d e s t i n a t i o n   m a i l b o x  # '� ' I Gg��()
�� .coremovenull���     obj ( o  GH���� 0 
themessage 
theMessage) ��*��
�� 
insh* n  Kc+,+ 4  ^c��-
�� 
mbxp- o  ab���� (0 destinationmailbox destinationMailbox, 4  K^��.
�� 
mact. l O]/����/ n  O]010 1  X\��
�� 
pnam1 l OX2����2 n  OX343 m  TX��
�� 
mact4 l OT5����5 n  OT676 m  PT��
�� 
mbxp7 o  OP���� 0 
themessage 
theMessage��  ��  ��  ��  ��  ��  ��  �   � 0 
themessage 
theMessage  o  47���� $0 selectedmessages selectedMessages�  �   8��8 r  qx9:9 m  qt;; �<<  $ s u c c e s s: o      ���� 0 response  ��  	 =>= l yy��������  ��  ��  > ?��? l yy��������  ��  ��  ��  �u  � m  ��@@f                                                                                  emal  alis      SSD                            BD ����Mail.app                                                       ����            ����  
 cu             Applications  /:Applications:Mail.app/    M a i l . a p p    S S D  Applications/Mail.app   / ��  �|  ��   T r  ~�ABA m  ~�CC �DD  $ a p i k e yB o      ���� 0 response   Q EFE l ����GH��  G 2 ,--------------------------------------------   H �II X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -F JKJ l ����LM��  L 8 2 handle response success,error and missing api key   M �NN d   h a n d l e   r e s p o n s e   s u c c e s s , e r r o r   a n d   m i s s i n g   a p i   k e yK OPO l ����QR��  Q 2 ,--------------------------------------------   R �SS X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -P TUT Z  �VVWXYV = ��Z[Z o  ������ 0 response  [ m  ��\\ �]]  $ s u c c e s sW l �^_`^ k  �aa bcb l ����de��  d ; 5 Format response wether Label or Project is available   e �ff j   F o r m a t   r e s p o n s e   w e t h e r   L a b e l   o r   P r o j e c t   i s   a v a i l a b l ec ghg Z  ��ij��ki = ��lml o  ������ 0 
theproject 
theProjectm m  ��nn �oo  j r  ��pqp m  ��rr �ss  q o      ���� 0 
theproject 
theProject��  k r  ��tut b  ��vwv m  ��xx �yy  #w o  ������ 0 
theproject 
theProjectu o      ���� 0 
theproject 
theProjecth z{z l ����������  ��  ��  { |}| Z  ��~���~ = ����� o  ������ 0 thelabel theLabel� m  ���� ���   r  ����� m  ���� ���  � o      ���� 0 thelabel theLabel��  � r  ����� b  ����� m  ���� ���  @� o  ������ 0 thelabel theLabel� o      ���� 0 thelabel theLabel} ���� I �����
�� .sysonotfnull��� ��� TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� l �������� n  ����� 7 ������
�� 
ctxt� m  ������ � m  ������ 
� o  ������ 0 thename theName��  ��  � m  ���� ���  . . . ,� o  ������ 0 theduestring theDueString� m  ���� ���    
!�  � o  ������ 0 
theproject 
theProject� m  ���� ���   � o  ������ 0 thelabel theLabel� �����
�� 
appr� m  ���� ��� * T o d o i s t   t a s k   c r e a t e d !��  ��  _   SUCCESS   ` ���    S U C C E S SX ��� = ��� o  	���� 0 response  � m  	�� ���  $ a p i k e y� ��� l ,���� k  ,�� ��� I ����
�� .sysonotfnull��� ��� TEXT� m  �� ��� � A d d   T o d i s t   A P I   K e y   t o   w o r k f l o w   c o n f i g u r a t i o n ,   [ X ]   s y m b o l   i n   W F   d e t a i l s� �����
�� 
appr� m  �� ��� D T o d o i s t   A P I   K e y   m i s s i n g   o r   i n v a l i d��  � ���� O  ,��� I $+�����
�� .GURLGURLnull��� ��� TEXT� m  $'�� ��� L h t t p s : / / t o d o i s t . c o m / p r e f s / i n t e g r a t i o n s��  � m  !���                                                                                  MACS  alis    .  SSD                            BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  � 2 , API key missing and open Todoist Dev center   � ��� X   A P I   k e y   m i s s i n g   a n d   o p e n   T o d o i s t   D e v   c e n t e r� ��� = /6��� o  /2���� 0 response  � m  25�� ���  $ s e l e c t i o n� ���� l 9F���� I 9F����
�� .sysonotfnull��� ��� TEXT� m  9<�� ��� B P l e a s e   s e l e c t   E m a i l   i n   A p p l e   M a i l� �����
�� 
appr� m  ?B�� ��� 6 A d d   T a s k   t o   T o d o i s t   f a i l e d !��  � - ' No email selected or not in Apple mail   � ��� N   N o   e m a i l   s e l e c t e d   o r   n o t   i n   A p p l e   m a i l��  Y I IV����
�� .sysonotfnull��� ��� TEXT� m  IL�� ��� * S o m e t h i n g   w e n t   w r o n g !� �����
�� 
appr� m  OR�� ��� 6 A d d   T a s k   t o   T o d o i s t   f a i l e d !��  U ���� l WW��������  ��  ��  ��    ��� l     ��������  ��  ��  � ��� l      ������  � w q =============================
Removes a chracter from a String
OUTPUT: String
==================================   � ��� �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 R e m o v e s   a   c h r a c t e r   f r o m   a   S t r i n g 
 O U T P U T :   S t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =� ��� i    ��� I      ������� "0 removecharacter RemoveCharacter� ��� o      ���� 0 thestr theStr� ���� o      ���� 0 thechar theChar��  ��  � l    2���� k     2�� ��� r     ��� n     ��� 2    ��
�� 
cha � o     ���� 0 thestr theStr� o      ���� 0 theclist theClist� ��� r    	� � m     �    o      ���� 0 	newstring 	newString�  X   
 /�� Z    *���� H    		 E    

 o    ���� 0 c   o    ���� 0 thechar theChar r   ! & b   ! $ o   ! "���� 0 	newstring 	newString o   " #���� 0 c   o      ���� 0 	newstring 	newString��  ��  �� 0 c   o    ���� 0 theclist theClist �� L   0 2 o   0 1���� 0 	newstring 	newString��  � &   theStr(String), theChar(String)   � � @   t h e S t r ( S t r i n g ) ,   t h e C h a r ( S t r i n g )�  l     ��������  ��  ��    l      ����   � � ================================================================
FUNTION: Splits a String with a given delimiter
RETURNS: List of String  (List)
==================================================================    ��   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   S p l i t s   a   S t r i n g   w i t h   a   g i v e n   d e l i m i t e r 
 R E T U R N S :   L i s t   o f   S t r i n g     ( L i s t ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  i     I      ������ 0 stringsplit StringSplit   o      ���� 0 	thestring 	theString  !��! o      ���� 0 thedelimiter theDelimiter��  ��   k     "" #$# l     ��%&��  % . ( save delimiters to restore old settings   & �'' P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s$ ()( r     *+* n    ,-, 1    ��
�� 
txdl- 1     ��
�� 
ascr+ o      ���� 0 olddelimiters oldDelimiters) ./. l   ��01��  0 - ' set delimiters to delimiter to be used   1 �22 N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d/ 343 r    565 o    ���� 0 thedelimiter theDelimiter6 n     787 1    
��
�� 
txdl8 1    ��
�� 
ascr4 9:9 l   ��;<��  ;   create the array   < �== "   c r e a t e   t h e   a r r a y: >?> r    @A@ n    BCB 2    ��
�� 
citmC o    ���� 0 	thestring 	theStringA o      ���� 0 thearray theArray? DED l   ��FG��  F   restore the old setting   G �HH 0   r e s t o r e   t h e   o l d   s e t t i n gE IJI r    KLK o    ���� 0 olddelimiters oldDelimitersL n     MNM 1    ��
�� 
txdlN 1    ��
�� 
ascrJ OPO l   ��QR��  Q   return the result   R �SS $   r e t u r n   t h e   r e s u l tP T�T L    UU o    �~�~ 0 thearray theArray�   VWV l     �}�|�{�}  �|  �{  W XYX l      �zZ[�z  Z � � ================================================================
FUNTION: Convert Scientific Number to a String
RETURNS: String
==================================================================   [ �\\�   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   C o n v e r t   S c i e n t i f i c   N u m b e r   t o   a   S t r i n g 
 R E T U R N S :   S t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =Y ]�y] i    ^_^ I      �x`�w�x 0 number_to_string  ` a�va o      �u�u 0 this_number  �v  �w  _ k    ]bb cdc r     efe c     ghg o     �t�t 0 this_number  h m    �s
�s 
TEXTf o      �r�r 0 this_number  d iji Z   Zkl�qmk E    	non o    �p�p 0 this_number  o m    pp �qq  E +l k    �rr sts r    uvu l   w�o�nw I   �m�lx
�m .sysooffslong    ��� null�l  x �kyz
�k 
psofy m    {{ �||  .z �j}�i
�j 
psin} o    �h�h 0 this_number  �i  �o  �n  v o      �g�g 0 x  t ~~ r    #��� l   !��f�e� I   !�d�c�
�d .sysooffslong    ��� null�c  � �b��
�b 
psof� m    �� ���  +� �a��`
�a 
psin� o    �_�_ 0 this_number  �`  �f  �e  � o      �^�^ 0 y   ��� r   $ /��� l  $ -��]�\� I  $ -�[�Z�
�[ .sysooffslong    ��� null�Z  � �Y��
�Y 
psof� m   & '�� ���  E� �X��W
�X 
psin� o   ( )�V�V 0 this_number  �W  �]  �\  � o      �U�U 0 z  � ��� r   0 E��� c   0 C��� c   0 A��� n   0 ?��� 7  1 ?�T��
�T 
cha � l  5 ;��S�R� \   5 ;��� o   6 7�Q�Q 0 y  � l  7 :��P�O� n   7 :��� 1   8 :�N
�N 
leng� o   7 8�M�M 0 this_number  �P  �O  �S  �R  � l 	 < >��L�K� m   < >�J�J���L  �K  � o   0 1�I�I 0 this_number  � m   ? @�H
�H 
TEXT� m   A B�G
�G 
nmbr� l     ��F�E� o      �D�D 0 decimal_adjust  �F  �E  � ��� Z   F c���C�� >  F I��� o   F G�B�B 0 x  � m   G H�A�A  � r   L ]��� c   L [��� n   L Y��� 7  M Y�@��
�@ 
cha � m   Q S�?�? � l  T X��>�=� \   T X��� o   U V�<�< 0 x  � m   V W�;�; �>  �=  � o   L M�:�: 0 this_number  � m   Y Z�9
�9 
TEXT� l     ��8�7� o      �6�6 0 
first_part  �8  �7  �C  � r   ` c��� m   ` a�� ���  � l     ��5�4� o      �3�3 0 
first_part  �5  �4  � ��� r   d w��� c   d u��� n   d s��� 7  e s�2��
�2 
cha � l  i m��1�0� [   i m��� o   j k�/�/ 0 x  � m   k l�.�. �1  �0  � l  n r��-�,� \   n r��� o   o p�+�+ 0 z  � m   p q�*�* �-  �,  � o   d e�)�) 0 this_number  � m   s t�(
�( 
TEXT� l     ��'�&� o      �%�% 0 second_part  �'  �&  � ��� r   x {��� l  x y��$�#� o   x y�"�" 0 
first_part  �$  �#  � l     ��!� � o      �� 0 converted_number  �!  �   � ��� Y   | ������� Q   � ����� r   � ���� b   � ���� l 	 � ����� l  � ����� o   � ��� 0 converted_number  �  �  �  �  � n   � ���� 4   � ���
� 
cha � o   � ��� 0 i  � l  � ����� o   � ��� 0 second_part  �  �  � l     ���� o      �� 0 converted_number  �  �  � R      ���
� .ascrerr ****      � ****�  �  � r   � ���� b   � ���� l  � ����� o   � ��
�
 0 converted_number  �  �  � m   � ��� ���  0� l     ��	�� o      �� 0 converted_number  �	  �  � 0 i  � m    ��� � l  � ����� o   � ��� 0 decimal_adjust  �  �  �  � ��� L   � ��� l  � ���� � o   � ����� 0 converted_number  �  �   �  �q  m Z   �Z������ E   � ���� o   � ����� 0 this_number  � m   � ��� ���  E -� k   �T�� ��� r   � �   l  � ����� I  � �����
�� .sysooffslong    ��� null��   ��
�� 
psof m   � � �  . ����
�� 
psin o   � ����� 0 this_number  ��  ��  ��   o      ���� 0 x  � 	
	 r   � � l  � ����� I  � �����
�� .sysooffslong    ��� null��   ��
�� 
psof m   � � �  - ����
�� 
psin o   � ����� 0 this_number  ��  ��  ��   o      ���� 0 y  
  r   � � l  � ����� I  � �����
�� .sysooffslong    ��� null��   ��
�� 
psof m   � � �  E ����
�� 
psin o   � ����� 0 this_number  ��  ��  ��   o      ���� 0 z     Z   � �!"��#! >  � �$%$ o   � ����� 0 x  % m   � �����  " r   � �&'& n   � �()( 7  � ���*+
�� 
ctxt* m   � ����� + l  � �,����, \   � �-.- o   � ����� 0 x  . m   � ����� ��  ��  ) o   � ����� 0 this_number  ' l     /����/ o      ���� 0 
first_part  ��  ��  ��  # r   � �010 m   � �22 �33  1 l     4����4 o      ���� 0 
first_part  ��  ��    565 r   �787 n   �9:9 7  ���;<
�� 
ctxt; l =����= [  >?> o  ���� 0 x  ? m  ���� ��  ��  < l @����@ \  ABA o  	���� 0 z  B m  	
���� ��  ��  : o   � ����� 0 this_number  8 l     C����C o      ���� 0 second_part  ��  ��  6 DED r  FGF b  HIH l J����J o  ���� 0 
first_part  ��  ��  I o  ���� 0 second_part  G l     K����K o      ���� 0 converted_number  ��  ��  E LML r  (NON c  &PQP n  $RSR 7 $��TU
�� 
ctxtT l  V����V [   WXW o  ���� 0 y  X m  ���� ��  ��  U m  !#������S o  ���� 0 this_number  Q m  $%��
�� 
nmbrO o      ���� 0 n  M YZY r  ).[\[ m  ),]] �^^  0 .\ o      ���� 0 zero  Z _`_ l //��������  ��  ��  ` aba Z  /Ncd����c ?  /2efe o  /0���� 0 n  f m  01���� d U  5Jghg r  >Eiji b  >Cklk o  >?���� 0 zero  l m  ?Bmm �nn  0j o      ���� 0 zero  h l 8;o����o \  8;pqp o  89���� 0 n  q m  9:���� ��  ��  ��  ��  b r��r r  OTsts b  ORuvu o  OP���� 0 zero  v o  PQ���� 0 converted_number  t o      ���� 0 converted_number  ��  ��  � r  WZwxw o  WX���� 0 this_number  x o      ���� 0 converted_number  j yzy l [[��������  ��  ��  z {��{ L  []|| o  [\���� 0 converted_number  ��  �y       ��}~����  } ��������
�� .aevtoappnull  �   � ****�� "0 removecharacter RemoveCharacter�� 0 stringsplit StringSplit�� 0 number_to_string  ~ �� ��������
�� .aevtoappnull  �   � ****�� 0 thequery theQuery��  � ���������� 0 thequery theQuery�� 0 theitem theItem�� 
0 prefix  �� 0 
themessage 
theMessage� � ���� , 0 4 7������ L�� W `�� m�� {��������������� ��~ ��} ��| ��{�z�y �x�w�v�u�t-7T�sl�r�q��p�o������n��m�l�k���35�j@BNRln�i�h��g�f�e�d�c�b�a�`�_���^@�]�\�[�Z�Y�X�W�Vd�U�T�S�Ro�Q��P��O�����N��M���L�������K�J�I�H�G;C\nrx����F����E��D������C�����
�� .sysoexecTEXT���     TEXT�� (0 destinationmailbox destinationMailbox�� �� $0 prefixestoremove prefixesToRemove�� 0 askforthename askForTheName�� 0 todoisttoken todoistToken
�� 
psxf�� 0 
thedatadir 
theDataDir
�� 
ctxt�� 0 thedatafile theDataFile��  0 theprojectdata theProjectData
�� 
file
�� .rdwrread****        ****
�� 
cpar��  �  
�~ .ascrcmnt****      � ****�} 0 thelabeldata theLabelData
�| 
leng�{ 0 stringsplit StringSplit�z $0 theprojectrecord theProjectRecord
�y 
cobj�x *0 theprojectnamearray theProjectNameArray�w 0 
theproject 
theProject�v &0 theprojectidarray theProjectIdArray�u 0 theprojectid theProjectId�t 0 	projectid 	ProjectId�s  0 thelabelrecord theLabelRecord�r &0 thelabelnamearray theLabelNameArray�q 0 thelabel theLabel�p "0 thelabelidarray theLabelIdArray�o 0 
thelabelid 
theLabelId
�n 
psof
�m 
psin
�l .sysooffslong    ��� null�k 0 
thesnippet 
theSnippet�j 0 theduestring theDueString�i 0 curl  �h  0 theprojectjson theProjectJson
�g .DfaBrEaDnull���     ****�f "0 thetodoistitems theTodoistItems
�e 
kocl
�d .corecnte****       ****�c 0 id  �b 0 number_to_string  �a 0 theid theId�` 0 name  �_ 0 thename theName�^ 0 thelabeljson theLabelJson
�] .miscactvnull��� ��� null
�\ 
slct�[ $0 selectedmessages selectedMessages�Z 0 response  �Y 0 
themessage 
theMessage
�X 
subj
�W 
sndr�V 0 	thesender 	theSender
�U 
dtxt
�T .sysodlogaskr        TEXT
�S 
rslt
�R 
bhit
�Q 
ttxt
�P 
meid�O 0 theurl theURL�N 0 
thecontent 
theContent�M 0 myuuid myUUID�L "0 removecharacter RemoveCharacter
�K 
insh
�J 
mact
�I 
mbxp
�H 
pnam
�G .coremovenull���     obj �F 

�E 
appr
�D .sysonotfnull��� ��� TEXT
�C .GURLGURLnull��� ��� TEXT��Y�j E�O�����vE�OfE�O�j E�O��]�j O*��j /E` O_ a %a &E` OjvE` O *a _ /j a -E` W X  jvE` Oa j O_ a %a &E` OjvE` O *a _ /j a -E` W X  jvE` Oa j O_ a ,j t*_ a &a  l+ !E` "O H*_ "a #l/a $l+ !E` %O_ %a #l/E` &O*_ "a #k/a 'l+ !E` (O_ (a #l/E` )W X  jE` *Oa +E` &Y jE` )Oa ,E` &O_ a ,j v*_ a &a -l+ !E` .O H*_ .a #l/a /l+ !E` 0O_ 0a #l/E` 1O*_ .a #k/a 2l+ !E` 3O_ 3a #l/E` 4W X  a 5E` 4Oa 6E` 1Y a 7E` 4Oa 8E` 1O�a &E�O�a 9 O�[a \[Z*a :a ;a <�� =k\Zi2E` >O_ >a ? *_ >a @l+ !a #k/E` 1Y 	_ >E` 1Y hO�a A O�[a \[Z*a :a Ba <�� =k\Zi2E` >O_ >a C *_ >a Dl+ !a #k/E` &Y 	_ >E` &Y hOa E�%a F%j E` GOa H_ G%a I%j E` GO_ Ga &a J  a KE` GY hOa L�%a M%E` NO_ Nj E` OOa P _ Oj QE` RUO H_ R[a Sa #l Tkh *�a U,k+ VE` WO�a X,E` YO_ Y_ &  _ WE` )Y h[OY��Oa Z�%a [%E` NO_ Nj E` \Oa P _ \j QE` RUO H_ R[a Sa #l Tkh *�a U,k+ VE` WO�a X,E` YO_ Y_ 1  _ WE` 4Y h[OY��Oa ]�*j ^O*a _,EE` `O_ `j Tj  a aE` bY�_ `a #i/E` cO_ ca d,E` YO_ ca e,E` fO =�[a Sa #l Tkh _ Y� _ Y[a \[Zk�a ,\Zi2E` YY h[OY��O� 5a ga h_ Yl iE` jO_ ja k,a l  _ ja m,E` YY hY hOa n_ ca o,%a p%E` qOa r_ Y%a s%_ q%a t%_ f%a u%E` vOa wj E` xOa y)_ va zl+ {%a |%_ G%a }%_ )%a ~%_ 4%a %�%a �%_ x%a �%E` NO_ Nj E` bO_ ba � a �E` bY Q�a � @ :_ `[a Sa #l Tkh �a �*a ��a �,a �,a �,E/a ��/l �[OY��Y hOa �E` bOPUY 	a �E` bO_ ba �  x_ &a �  a �E` &Y a �_ &%E` &O_ 1a �  a �E` 1Y a �_ 1%E` 1O_ Y[a \[Zk\Za �2a �%_ G%a �%_ &%a �%_ 1%a �a �l �Y R_ ba �  !a �a �a �l �Oa � 	a �j �UY )_ ba �  a �a �a �l �Y a �a �a �l �OP �B��A�@���?�B "0 removecharacter RemoveCharacter�A �>��> �  �=�<�= 0 thestr theStr�< 0 thechar theChar�@  � �;�:�9�8�7�; 0 thestr theStr�: 0 thechar theChar�9 0 theclist theClist�8 0 	newstring 	newString�7 0 c  � �6�5�4�3
�6 
cha 
�5 
kocl
�4 
cobj
�3 .corecnte****       ****�? 3��-E�O�E�O $�[��l kh �� 
��%E�Y h[OY��O�� �2�1�0���/�2 0 stringsplit StringSplit�1 �.��. �  �-�,�- 0 	thestring 	theString�, 0 thedelimiter theDelimiter�0  � �+�*�)�(�+ 0 	thestring 	theString�* 0 thedelimiter theDelimiter�) 0 olddelimiters oldDelimiters�( 0 thearray theArray� �'�&�%
�' 
ascr
�& 
txdl
�% 
citm�/ ��,E�O���,FO��-E�O���,FO�� �$_�#�"���!�$ 0 number_to_string  �# � ��  �  �� 0 this_number  �"  � ������������ 0 this_number  � 0 x  � 0 y  � 0 z  � 0 decimal_adjust  � 0 
first_part  � 0 second_part  � 0 converted_number  � 0 i  � 0 n  � 0 zero  � �p�{�����������
���	2]m
� 
TEXT
� 
psof
� 
psin� 
� .sysooffslong    ��� null
� 
cha 
� 
leng
� 
nmbr�  �
  
�	 
ctxt�!^��&E�O�� �*���� E�O*���� E�O*���� E�O�[�\[Z���,\Zi2�&�&E�O�j �[�\[Zk\Z�k2�&E�Y �E�O�[�\[Z�k\Z�k2�&E�O�E�O &k�kh  ���/%E�W X  ��%E�[OY��O�Y ��a  �*�a �� E�O*�a �� E�O*�a �� E�O�j �[a \[Zk\Z�k2E�Y a E�O�[a \[Z�k\Z�k2E�O��%E�O�[a \[Z�k\Zi2�&E�Oa E�O�k  �kkh�a %E�[OY��Y hO��%E�Y �E�O� ascr  ��ޭ