FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � � ================================================
mail2todoist.scpt generate Todosit task from an Email and Achrive the Email
================================================      � 	 	^   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 m a i l 2 t o d o i s t . s c p t   g e n e r a t e   T o d o s i t   t a s k   f r o m   a n   E m a i l   a n d   A c h r i v e   t h e   E m a i l 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =     
  
 i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 thequery theQuery��    k    k       l     ��  ��    , & READ CONFIG and Environment variables     �   L   R E A D   C O N F I G   a n d   E n v i r o n m e n t   v a r i a b l e s      l         r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        �   0 e c h o   $ d e s t i n a t i o n M a i l b o x��    o      ���� (0 destinationmailbox destinationMailbox  * $ if empty email will not be archived     �   H   i f   e m p t y   e m a i l   w i l l   n o t   b e   a r c h i v e d     !   l   �� " #��   " 0 * Prefixes to be removed from email subject    # � $ $ T   P r e f i x e s   t o   b e   r e m o v e d   f r o m   e m a i l   s u b j e c t !  % & % r     ' ( ' J     ) )  * + * m    	 , , � - -  r e :   +  . / . m   	 
 0 0 � 1 1 
 o d p :   /  2 3 2 m   
  4 4 � 5 5  f w :   3  6 7 6 m     8 8 � 9 9 
 f w d :   7  :�� : m     ; ; � < <  A W :  ��   ( o      ���� $0 prefixestoremove prefixesToRemove &  = > = l   �� ? @��   ? U O Decide if you want to confirm name of created task. Defaut is message subject.    @ � A A �   D e c i d e   i f   y o u   w a n t   t o   c o n f i r m   n a m e   o f   c r e a t e d   t a s k .   D e f a u t   i s   m e s s a g e   s u b j e c t . >  B C B r     D E D m    ��
�� boovfals E o      ���� 0 askforthename askForTheName C  F G F l   �� H I��   H , & Get todoist token from Workflow value    I � J J L   G e t   t o d o i s t   t o k e n   f r o m   W o r k f l o w   v a l u e G  K L K r     M N M I   �� O��
�� .sysoexecTEXT���     TEXT O m     P P � Q Q $ e c h o   $ t o d o i s t T o k e n��   N o      ���� 0 todoisttoken todoistToken L  R S R l   ��������  ��  ��   S  T U T Z   � V W�� X V >   ! Y Z Y o    ���� 0 todoisttoken todoistToken Z m      [ [ � \ \   W k   $� ] ]  ^ _ ^ l  $ ) ` a b ` I  $ )�� c��
�� .sysoexecTEXT���     TEXT c m   $ % d d � e e D m k d i r   - p   " $ { a l f r e d _ w o r k f l o w _ d a t a } "��   a 0 * create WF data directory if not available    b � f f T   c r e a t e   W F   d a t a   d i r e c t o r y   i f   n o t   a v a i l a b l e _  g h g l  * 8 i j k i r   * 8 l m l 4   * 4�� n
�� 
psxf n l  , 3 o���� o I  , 3�� p��
�� .sysoexecTEXT���     TEXT p m   , / q q � r r 4 e c h o   $ a l f r e d _ w o r k f l o w _ d a t a��  ��  ��   m o      ���� 0 
thedatadir 
theDataDir j   get WF data directory    k � s s ,   g e t   W F   d a t a   d i r e c t o r y h  t u t l  9 H v w x v r   9 H y z y c   9 D { | { b   9 @ } ~ } o   9 <���� 0 
thedatadir 
theDataDir ~ m   < ?   � � �  : p r o j e c t . t x t | m   @ C��
�� 
ctxt z o      ���� 0 thedatafile theDataFile w   Read Project Data file    x � � � .   R e a d   P r o j e c t   D a t a   f i l e u  � � � l  I I�� � ���   � 4 .	log ("DataDir: " & POSIX path of theDataFile)    � � � � \ 	 l o g   ( " D a t a D i r :   "   &   P O S I X   p a t h   o f   t h e D a t a F i l e ) �  � � � l  I I��������  ��  ��   �  � � � l  I I�� � ���   �   Read Project Data file    � � � � .   R e a d   P r o j e c t   D a t a   f i l e �  � � � r   I O � � � J   I K����   � o      ����  0 theprojectdata theProjectData �  � � � Q   P } � � � � r   S g � � � n   S c � � � 2  _ c��
�� 
cpar � l  S _ ����� � I  S _�� ���
�� .rdwrread****        **** � 4   S [�� �
�� 
file � o   W Z���� 0 thedatafile theDataFile��  ��  ��   � o      ����  0 theprojectdata theProjectData � R      ������
�� .ascrerr ****      � ****��  ��   � k   o } � �  � � � r   o u � � � J   o q����   � o      ����  0 theprojectdata theProjectData �  ��� � I  v }�� ���
�� .ascrcmnt****      � **** � l  v y ����� � m   v y � � � � �  f i l e   e m p t y��  ��  ��  ��   �  � � � l  ~ ~��������  ��  ��   �  � � � l  ~ ~�� � ���   �   Read label data file     � � � � ,   R e a d   l a b e l   d a t a   f i l e   �  � � � r   ~ � � � � c   ~ � � � � b   ~ � � � � o   ~ ����� 0 
thedatadir 
theDataDir � m   � � � � � � �  : l a b e l . t x t � m   � ���
�� 
ctxt � o      ���� 0 thedatafile theDataFile �  � � � r   � � � � � J   � �����   � o      ���� 0 thelabeldata theLabelData �  � � � Q   � � � � � � r   � � � � � n   � � � � � 2  � ���
�� 
cpar � l  � � ����� � I  � ��� ���
�� .rdwrread****        **** � 4   � ��� �
�� 
file � o   � ����� 0 thedatafile theDataFile��  ��  ��   � o      ���� 0 thelabeldata theLabelData � R      ������
�� .ascrerr ****      � ****��  ��   � k   � � � �  � � � r   � � � � � J   � �����   � o      ���� 0 thelabeldata theLabelData �  ��� � I  � ��� ���
�� .ascrcmnt****      � **** � l  � � ����� � m   � � � � � � �  f i l e   e m p t y��  ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � $  Get ProjectID from saved data    � � � � <   G e t   P r o j e c t I D   f r o m   s a v e d   d a t a �  � � � Z   �N � ��� � � >  � � � � � n   � � � � � 1   � ���
�� 
leng � o   � �����  0 theprojectdata theProjectData � m   � �����   � k   �> � �  � � � r   � � � � � I   � ��� ����� 0 stringsplit StringSplit �  � � � c   � � � � � o   � �����  0 theprojectdata theProjectData � m   � ���
�� 
ctxt �  ��� � m   � � � � � � �  |��  ��   � o      ���� $0 theprojectrecord theProjectRecord �  ��� � Q   �> � � � � k   �) � �  � � � l  � � � � � � r   � � � � � I   � ��� ����� 0 stringsplit StringSplit �  � � � l  � � ����� � n   � �   4   � ���
�� 
cobj m   � �����  o   � ����� $0 theprojectrecord theProjectRecord��  ��   � �� m   � � �  :��  ��   � o      ���� *0 theprojectnamearray theProjectNameArray � * $ Project Name, required for response    � � H   P r o j e c t   N a m e ,   r e q u i r e d   f o r   r e s p o n s e �  r   �	
	 n   � 4   ���
�� 
cobj m  ����  o   � ����� *0 theprojectnamearray theProjectNameArray
 o      ���� 0 
theproject 
theProject  l ��������  ��  ��    l  r   I  ������ 0 stringsplit StringSplit  l 	���� n  	 4  ��
�� 
cobj m  ����  o  	���� $0 theprojectrecord theProjectRecord��  ��   �� m   �    :��  ��   o      ���� &0 theprojectidarray theProjectIdArray   Project ID    �!!    P r o j e c t   I D "��" r  )#$# n  %%&% 4   %�'
� 
cobj' m  #$�~�~ & o   �}�} &0 theprojectidarray theProjectIdArray$ o      �|�| 0 theprojectid theProjectId��   � R      �{�z�y
�{ .ascrerr ****      � ****�z  �y   � k  1>(( )*) r  16+,+ m  12�x�x  , l     -�w�v- o      �u�u 0 	projectid 	ProjectId�w  �v  * .�t. r  7>/0/ m  7:11 �22  0 o      �s�s 0 
theproject 
theProject�t  ��  ��   � k  AN33 454 r  AF676 m  AB�r�r  7 o      �q�q 0 theprojectid theProjectId5 8�p8 r  GN9:9 m  GJ;; �<< 
 I N B O X: o      �o�o 0 
theproject 
theProject�p   � =>= l OO�n�m�l�n  �m  �l  > ?@? l OO�kAB�k  A #  Get LabelID from daved data	   B �CC :   G e t   L a b e l I D   f r o m   d a v e d   d a t a 	@ DED Z  O�FG�jHF > OXIJI n  OVKLK 1  RV�i
�i 
lengL o  OR�h�h 0 thelabeldata theLabelDataJ m  VW�g�g  G k  [�MM NON r  [nPQP I  [j�fR�e�f 0 stringsplit StringSplitR STS c  \cUVU o  \_�d�d 0 thelabeldata theLabelDataV m  _b�c
�c 
ctxtT W�bW m  cfXX �YY  |�b  �e  Q o      �a�a  0 thelabelrecord theLabelRecordO Z[Z l oo�`�_�^�`  �_  �^  [ \�]\ Q  o�]^_] k  r�`` aba l r�cdec r  r�fgf I  r��\h�[�\ 0 stringsplit StringSplith iji l s{k�Z�Yk n  s{lml 4  v{�Xn
�X 
cobjn m  yz�W�W m o  sv�V�V  0 thelabelrecord theLabelRecord�Z  �Y  j o�Uo m  {~pp �qq  :�U  �[  g o      �T�T &0 thelabelnamearray theLabelNameArrayd ) # Label Name, required for response    e �rr F   L a b e l   N a m e ,   r e q u i r e d   f o r   r e s p o n s e  b sts r  ��uvu n  ��wxw 4  ���Sy
�S 
cobjy m  ���R�R x o  ���Q�Q &0 thelabelnamearray theLabelNameArrayv o      �P�P 0 thelabel theLabelt z{z l ���O�N�M�O  �N  �M  { |}| l ��~�~ r  ����� I  ���L��K�L 0 stringsplit StringSplit� ��� l ����J�I� n  ����� 4  ���H�
�H 
cobj� m  ���G�G � o  ���F�F  0 thelabelrecord theLabelRecord�J  �I  � ��E� m  ���� ���  :�E  �K  � o      �D�D "0 thelabelidarray theLabelIdArray  	 Label ID   � ���    L a b e l   I D} ��C� r  ����� n  ����� 4  ���B�
�B 
cobj� m  ���A�A � o  ���@�@ "0 thelabelidarray theLabelIdArray� o      �?�? 0 
thelabelid 
theLabelId�C  ^ R      �>�=�<
�> .ascrerr ****      � ****�=  �<  _ k  ���� ��� r  ����� m  ���� ���  � o      �;�; 0 
thelabelid 
theLabelId� ��:� r  ����� m  ���� ���  � o      �9�9 0 thelabel theLabel�:  �]  �j  H k  ���� ��� r  ����� m  ���� ���  � o      �8�8 0 
thelabelid 
theLabelId� ��7� r  ����� m  ���� ���  � o      �6�6 0 thelabel theLabel�7  E ��� l ���5�4�3�5  �4  �3  � ��� l ���2���2  � E ? Get due data language, Project and Label, if emtpy set default   � ��� ~   G e t   d u e   d a t a   l a n g u a g e ,   P r o j e c t   a n d   L a b e l ,   i f   e m t p y   s e t   d e f a u l t� ��� r  ����� c  ����� o  ���1�1 0 thequery theQuery� m  ���0
�0 
ctxt� o      �/�/ 0 thequery theQuery� ��� l ���.�-�,�.  �-  �,  � ��� l ���+���+  �   Extract Label from query   � ��� 2   E x t r a c t   L a b e l   f r o m   q u e r y� ��� Z  �?���*�)� E  ����� o  ���(�( 0 thequery theQuery� m  ���� ���  @� k  �;�� ��� r  ���� n  ���� 7 ��'��
�' 
ctxt� l �
��&�%� [  �
��� l ���$�#� I ��"�!�
�" .sysooffslong    ��� null�!  � � ��
�  
psof� m  ���� ���  @� ���
� 
psin� o  �� 0 thequery theQuery�  �$  �#  � m  	�� �&  �%  � m  ����� o  ���� 0 thequery theQuery� o      �� 0 
thesnippet 
theSnippet� ��� Z  ;����� E  ��� o  �� 0 
thesnippet 
theSnippet� m  �� ���   � r  1��� n  -��� 4  (-��
� 
cobj� m  +,�� � I  (���� 0 stringsplit StringSplit� ��� o  !�� 0 
thesnippet 
theSnippet� ��� m  !$�� ���   �  �  � o      �� 0 thelabel theLabel�  � r  4;��� o  47�� 0 
thesnippet 
theSnippet� o      �� 0 thelabel theLabel�  �*  �)  � ��� l @@���
�  �  �
  � ��� l @@�	���	  � !  Extract Project from query   � ��� 6   E x t r a c t   P r o j e c t   f r o m   q u e r y� ��� Z  @������ E  @E��� o  @A�� 0 thequery theQuery� m  AD�� ���  #� k  H���    r  Hk n  Hg 7 Ig�
� 
ctxt l Oc�� [  Oc	
	 l Pa�� I Pa� ��
�  .sysooffslong    ��� null��   ��
�� 
psof m  TW �  # ����
�� 
psin o  Z[���� 0 thequery theQuery��  �  �  
 m  ab���� �  �   m  df������ o  HI���� 0 thequery theQuery o      ���� 0 
thesnippet 
theSnippet �� Z  l��� E  ls o  lo���� 0 
thesnippet 
theSnippet m  or �    r  v� n  v� 4  ����
�� 
cobj m  ������  I  v������� 0 stringsplit StringSplit  !  o  wz���� 0 
thesnippet 
theSnippet! "��" m  z}## �$$   ��  ��   o      ���� 0 
theproject 
theProject��   r  ��%&% o  ������ 0 
thesnippet 
theSnippet& o      ���� 0 
theproject 
theProject��  �  �  � '(' l ����������  ��  ��  ( )*) l ����+,��  +   Due Date String Extract    , �-- 2   D u e   D a t e   S t r i n g   E x t r a c t  * ./. r  ��010 I ����2��
�� .sysoexecTEXT���     TEXT2 b  ��343 b  ��565 m  ��77 �88  e c h o   "6 o  ������ 0 thequery theQuery4 m  ��99 �:: > "   |   s e d   - E   ' s / # [ A - Z a - z 0 - 9 ] + / / g '��  1 o      ���� 0 theduestring theDueString/ ;<; r  ��=>= I ����?��
�� .sysoexecTEXT���     TEXT? b  ��@A@ b  ��BCB m  ��DD �EE  e c h o   "C o  ������ 0 theduestring theDueStringA m  ��FF �GG > "   |   s e d   - E   ' s / @ [ A - Z a - z 0 - 9 ] + / / g '��  > o      ���� 0 theduestring theDueString< HIH l ����������  ��  ��  I JKJ Z ��LM����L = ��NON c  ��PQP o  ������ 0 theduestring theDueStringQ m  ����
�� 
ctxtO m  ��RR �SS  M r  ��TUT m  ��VV �WW " t o m o r r o w   a t   1 0 : 0 0U o      ���� 0 theduestring theDueString��  ��  K XYX l ����������  ��  ��  Y Z[Z l ����������  ��  ��  [ \]\ l ����^_��  ^ 6 0 Get List of all available projects from Todoist   _ �`` `   G e t   L i s t   o f   a l l   a v a i l a b l e   p r o j e c t s   f r o m   T o d o i s t] aba l ����cd��  c + %-------------------------------------   d �ee J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -b fgf l ����������  ��  ��  g hih r  ��jkj b  ��lml b  ��non m  ��pp �qq � c u r l   - X   G E T   h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / p r o j e c t s   - H   " A u t h o r i z a t i o n :   B e a r e r  o o  ������ 0 todoisttoken todoistTokenm m  ��rr �ss  "k o      ���� 0 curl  i tut l ��vwxv r  ��yzy I ����{��
�� .sysoexecTEXT���     TEXT{ o  ������ 0 curl  ��  z o      ����  0 theprojectjson theProjectJsonw   get Json from response   x �|| .   g e t   J s o n   f r o m   r e s p o n s eu }~} l ����������  ��  ��  ~ � l ��������  �   Read JSON into AS Record   � ��� 2   R e a d   J S O N   i n t o   A S   R e c o r d� ��� r  ����� I  ��������� 0 getjson getJSON� ���� o  ������  0 theprojectjson theProjectJson��  ��  � o      ���� "0 thetodoistitems theTodoistItems� ��� l   ��������  ��  ��  � ��� X   I����� k  D�� ��� r  $��� I   �������  0 numbertostring numberToString� ���� n  ��� o  ���� 0 id  � o  ���� 0 theitem theItem��  ��  � o      ���� 0 theid theId� ��� r  %.��� n  %*��� o  &*���� 0 name  � o  %&���� 0 theitem theItem� o      ���� 0 thename theName� ���� Z /D������� = /6��� o  /2���� 0 thename theName� o  25���� 0 
theproject 
theProject� r  9@��� o  9<���� 0 theid theId� o      ���� 0 theprojectid theProjectId��  ��  ��  �� 0 theitem theItem� o  ���� "0 thetodoistitems theTodoistItems� ��� l JJ��������  ��  ��  � ��� l JJ������  � , & Get List of all lablels from Tododist   � ��� L   G e t   L i s t   o f   a l l   l a b l e l s   f r o m   T o d o d i s t� ��� l JJ������  � % ------------------------------	   � ��� > - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	� ��� r  JW��� b  JS��� b  JO��� m  JM�� ��� � c u r l   - X   G E T   h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / l a b e l s   - H   " A u t h o r i z a t i o n :   B e a r e r  � o  MN���� 0 todoisttoken todoistToken� m  OR�� ���  "� o      ���� 0 curl  � ��� l Xc���� r  Xc��� I X_�����
�� .sysoexecTEXT���     TEXT� o  X[���� 0 curl  ��  � o      ���� 0 thelabeljson theLabelJson�   get Json from response   � ��� .   g e t   J s o n   f r o m   r e s p o n s e� ��� l dd��������  ��  ��  � ��� l dd������  �   Read JSON into AS Record   � ��� 2   R e a d   J S O N   i n t o   A S   R e c o r d� ��� r  dp��� I  dl������� 0 getjson getJSON� ���� o  eh���� 0 thelabeljson theLabelJson��  ��  � o      ���� "0 thetodoistitems theTodoistItems� ��� l qq��������  ��  ��  � ��� X  q������ k  ���� ��� r  ����� I  ���������  0 numbertostring numberToString� ���� n  ����� o  ������ 0 id  � o  ������ 0 theitem theItem��  ��  � o      ���� 0 theid theId� ��� r  ����� n  ����� o  ������ 0 name  � o  ������ 0 theitem theItem� o      ���� 0 thename theName� ���� Z ��������� = ����� o  ������ 0 thename theName� o  ������ 0 thelabel theLabel� r  ����� o  ������ 0 theid theId� o      ���� 0 
thelabelid 
theLabelId��  ��  ��  �� 0 theitem theItem� o  tw�� "0 thetodoistitems theTodoistItems� ��� l ���~�}�|�~  �}  �|  � ��� l ���{���{  � #  Handle Email from Apple Mail   � ��� :   H a n d l e   E m a i l   f r o m   A p p l e   M a i l� ��z� O  ����� k  ���� ��� I ���y�x�w
�y .miscactvnull��� ��� null�x  �w  � ��� l ��� � r  �� e  �� 1  ���v
�v 
slct o      �u�u $0 selectedmessages selectedMessages  ) # get selected Message in Apple Mail    � F   g e t   s e l e c t e d   M e s s a g e   i n   A p p l e   M a i l�  l ���t	�t   ? 9 checks if a message was selected or bypass task creation   	 �

 r   c h e c k s   i f   a   m e s s a g e   w a s   s e l e c t e d   o r   b y p a s s   t a s k   c r e a t i o n �s Z  ���r = �� l ���q�p I ���o�n
�o .corecnte****       **** o  ���m�m $0 selectedmessages selectedMessages�n  �q  �p   m  ���l�l   r  �� m  �� �  $ s e l e c t i o n o      �k�k 0 response  �r   k  ��  l �� r  �� n  ��  4 ���j!
�j 
cobj! m  ���i�i��  o  ���h�h $0 selectedmessages selectedMessages o      �g�g 0 
themessage 
theMessage $  we need only the last message    �"" <   w e   n e e d   o n l y   t h e   l a s t   m e s s a g e #$# l � %&'% r  � ()( n  ��*+* 1  ���f
�f 
subj+ o  ���e�e 0 
themessage 
theMessage) o      �d�d 0 thename theName& &   subject is the name of the task   ' �,, @   s u b j e c t   i s   t h e   n a m e   o f   t h e   t a s k$ -.- l /01/ r  232 n  454 1  �c
�c 
sndr5 o  �b�b 0 
themessage 
theMessage3 o      �a�a 0 	thesender 	theSender0 #  get the senders email adress   1 �66 :   g e t   t h e   s e n d e r s   e m a i l   a d r e s s. 787 l �`�_�^�`  �_  �^  8 9:9 l �];<�]  ; * $ remove prefixes as configured above   < �== H   r e m o v e   p r e f i x e s   a s   c o n f i g u r e d   a b o v e: >?> X  K@�\A@ Z  !FBC�[�ZB C  !&DED o  !$�Y�Y 0 thename theNameE o  $%�X�X 
0 prefix  C r  )BFGF n  )>HIH 7 ,>�WJK
�W 
ctxtJ l 2:L�V�UL [  2:MNM m  34�T�T N l 49O�S�RO n  49PQP 1  59�Q
�Q 
lengQ o  45�P�P 
0 prefix  �S  �R  �V  �U  K m  ;=�O�O��I o  ),�N�N 0 thename theNameG o      �M�M 0 thename theName�[  �Z  �\ 
0 prefix  A o  �L�L $0 prefixestoremove prefixesToRemove? RSR l LL�K�J�I�K  �J  �I  S TUT l LL�HVW�H  V 1 + if confgured pop up dialog to change title   W �XX V   i f   c o n f g u r e d   p o p   u p   d i a l o g   t o   c h a n g e   t i t l eU YZY Z  L�[\�G�F[ o  LM�E�E 0 askforthename askForTheName\ k  P�]] ^_^ r  Pa`a` I P]�Dbc
�D .sysodlogaskr        TEXTb m  PSdd �ee  E n t e r   t a s k   n a m ec �Cf�B
�C 
dtxtf o  VY�A�A 0 thename theName�B  a 1      �@
�@ 
rslt_ g�?g Z  b�hi�>jh = bmklk n  bimnm 1  ei�=
�= 
bhitn 1  be�<
�< 
rsltl m  iloo �pp  O Ki r  p{qrq n  pwsts 1  sw�;
�; 
ttxtt 1  ps�:
�: 
rsltr o      �9�9 0 thename theName�>  j L  ~��8�8  �?  �G  �F  Z uvu l ���7�6�5�7  �6  �5  v wxw l ���4yz�4  y e _ URL for Apple Mail Message, adding to the task note. Click in Todoist to open message in Mail.   z �{{ �   U R L   f o r   A p p l e   M a i l   M e s s a g e ,   a d d i n g   t o   t h e   t a s k   n o t e .   C l i c k   i n   T o d o i s t   t o   o p e n   m e s s a g e   i n   M a i l .x |}| r  ��~~ b  ����� b  ����� m  ���� ���  m e s s a g e : / / % 3 c� n ����� 1  ���3
�3 
meid� o  ���2�2 0 
themessage 
theMessage� m  ���� ���  % 3 e o      �1�1 0 theurl theURL} ��� l ���0�/�.�0  �/  �.  � ��� l ���-���-  � : 4 build content string including name, url and sender   � ��� h   b u i l d   c o n t e n t   s t r i n g   i n c l u d i n g   n a m e ,   u r l   a n d   s e n d e r� ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  [� o  ���,�, 0 thename theName� m  ���� ���  ] (� o  ���+�+ 0 theurl theURL� m  ���� ��� 
 )   -   [� o  ���*�* 0 	thesender 	theSender� m  ���� ���  ]� o      �)�) 0 
thecontent 
theContent� ��� l ���(�'�&�(  �'  �&  � ��� l ���%���%  � ( " genearte a uuid for task creation   � ��� D   g e n e a r t e   a   u u i d   f o r   t a s k   c r e a t i o n� ��� r  ����� I ���$��#
�$ .sysoexecTEXT���     TEXT� m  ���� ���  u u i d g e n�#  � o      �"�" 0 myuuid myUUID� ��� l ���!� ��!  �   �  � ��� l ������  � U O build curl command based on API v8 beta. This may be changed by totodist later   � ��� �   b u i l d   c u r l   c o m m a n d   b a s e d   o n   A P I   v 8   b e t a .   T h i s   m a y   b e   c h a n g e d   b y   t o t o d i s t   l a t e r� ��� r  ����� n ����� I  ������ "0 removecharacter RemoveCharacter� ��� o  ���� 0 
thecontent 
theContent� ��� m  ���� ���  '�  �  �  f  ��� o      �� 0 
thecontent 
theContent� ��� r  ����� n ����� I  ������ "0 removecharacter RemoveCharacter� ��� o  ���� 0 
thecontent 
theContent� ��� m  ���� ���  "�  �  �  f  ��� o      �� 0 
thecontent 
theContent� ��� l ������  �  �  � ��� r  ���� b  ���� b  ���� b  ���� b  �
��� b  ���� b  ���� b  � ��� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� � c u r l   " h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / t a s k s "   - X   P O S T   - - d a t a   ' { " c o n t e n t " :   "� o  ���� 0 
thecontent 
theContent� m  ���� ��� $ " ,   " d u e _ s t r i n g " :   "� o  ���� 0 theduestring theDueString� m  ���� ��� ` " ,   " d u e _ l a n g " :   " e n " ,   " p r i o r i t y " :   4 , " p r o j e c t _ i d " :� o  ���� 0 theprojectid theProjectId� m  ���� ���  , " l a b e l _ i d s " : [� o   �� 0 
thelabelid 
theLabelId� m  �� ��� � ] , " c o m m e n t _ c o u n t " :   0 ,   " c o m p l e t e d " :   f a l s e } '   - H   " C o n t e n t - T y p e :   a p p l i c a t i o n / j s o n "   - H   " A u t h o r i z a t i o n :   B e a r e r  � o  	�� 0 todoisttoken todoistToken� m  
�� ��� ( "   - H   " X - R e q u e s t - I d :  � o  �� 0 myuuid myUUID� m     �  "� o      �
�
 0 curl  �  l �	�	    display dialog curl    � & d i s p l a y   d i a l o g   c u r l  l ����  �  �   	
	 l ��   $  exec command and get response    � <   e x e c   c o m m a n d   a n d   g e t   r e s p o n s e
  r  & I "��
� .sysoexecTEXT���     TEXT o  �� 0 curl  �   o      �� 0 response    l ''� �     log (response)    �  l o g   ( r e s p o n s e )  l ''��������  ��  ��    l ''����   J D finally if response results success id will be part of the response    � �   f i n a l l y   i f   r e s p o n s e   r e s u l t s   s u c c e s s   i d   w i l l   b e   p a r t   o f   t h e   r e s p o n s e   Z  '�!"��#! H  '/$$ E  '.%&% o  '*���� 0 response  & m  *-'' �(( 
 " i d " :" r  29)*) m  25++ �,,  $ f a i l e d* o      ���� 0 response  ��  # k  <�-- ./. Z  <�01����0 > <A232 o  <=���� (0 destinationmailbox destinationMailbox3 m  =@44 �55  1 X  D6��76 k  Zz88 9:9 l ZZ��;<��  ; &   Archive to destination mailbox    < �== @   A r c h i v e   t o   d e s t i n a t i o n   m a i l b o x  : >��> I Zz��?@
�� .coremovenull���     obj ? o  Z[���� 0 
themessage 
theMessage@ ��A��
�� 
inshA n  ^vBCB 4  qv��D
�� 
mbxpD o  tu���� (0 destinationmailbox destinationMailboxC 4  ^q��E
�� 
mactE l bpF����F n  bpGHG 1  ko��
�� 
pnamH l bkI����I n  bkJKJ m  gk��
�� 
mactK l bgL����L n  bgMNM m  cg��
�� 
mbxpN o  bc���� 0 
themessage 
theMessage��  ��  ��  ��  ��  ��  ��  ��  �� 0 
themessage 
theMessage7 o  GJ���� $0 selectedmessages selectedMessages��  ��  / O��O r  ��PQP m  ��RR �SS  $ s u c c e s sQ o      ���� 0 response  ��    TUT l ����������  ��  ��  U V��V l ����������  ��  ��  ��  �s  � m  ��WWf                                                                                  emal  alis      SSD                            BD ����Mail.app                                                       ����            ����  
 cu             Applications  /:Applications:Mail.app/    M a i l . a p p    S S D  Applications/Mail.app   / ��  �z  ��   X r  ��XYX m  ��ZZ �[[  $ a p i k e yY o      ���� 0 response   U \]\ l ����^_��  ^ 2 ,--------------------------------------------   _ �`` X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -] aba l ����cd��  c 8 2 handle response success,error and missing api key   d �ee d   h a n d l e   r e s p o n s e   s u c c e s s , e r r o r   a n d   m i s s i n g   a p i   k e yb fgf l ����hi��  h 2 ,--------------------------------------------   i �jj X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -g klk Z  �imnopm = ��qrq o  ������ 0 response  r m  ��ss �tt  $ s u c c e s sn l �uvwu k  �xx yzy l ����{|��  { ; 5 Format response wether Label or Project is available   | �}} j   F o r m a t   r e s p o n s e   w e t h e r   L a b e l   o r   P r o j e c t   i s   a v a i l a b l ez ~~ Z  �������� = ����� o  ������ 0 
theproject 
theProject� m  ���� ���  � r  ����� m  ���� ���  � o      ���� 0 
theproject 
theProject��  � r  ����� b  ����� m  ���� ���  #� o  ������ 0 
theproject 
theProject� o      ���� 0 
theproject 
theProject ��� l ����������  ��  ��  � ��� Z  �������� = ����� o  ������ 0 thelabel theLabel� m  ���� ���  � r  ����� m  ���� ���  � o      ���� 0 thelabel theLabel��  � r  ����� b  ����� m  ���� ���  @� o  ������ 0 thelabel theLabel� o      ���� 0 thelabel theLabel� ���� I �����
�� .sysonotfnull��� ��� TEXT� b  ���� b  ���� b  ���� b  � ��� b  ����� b  ����� l �������� n  ����� 7 ������
�� 
ctxt� m  ������ � m  ������ 
� o  ������ 0 thename theName��  ��  � m  ���� ���  . . . ,� o  ������ 0 theduestring theDueString� m  ���� ���    
!�  � o   ���� 0 
theproject 
theProject� m  �� ���   � o  ���� 0 thelabel theLabel� �����
�� 
appr� m  �� ��� * T o d o i s t   t a s k   c r e a t e d !��  ��  v   SUCCESS   w ���    S U C C E S So ��� =  ��� o  ���� 0 response  � m  �� ���  $ a p i k e y� ��� l #?���� k  #?�� ��� I #0����
�� .sysonotfnull��� ��� TEXT� m  #&�� ��� � A d d   T o d i s t   A P I   K e y   t o   w o r k f l o w   c o n f i g u r a t i o n ,   [ X ]   s y m b o l   i n   W F   d e t a i l s� �����
�� 
appr� m  ),�� ��� D T o d o i s t   A P I   K e y   m i s s i n g   o r   i n v a l i d��  � ���� O  1?��� I 7>�����
�� .GURLGURLnull��� ��� TEXT� m  7:�� ��� L h t t p s : / / t o d o i s t . c o m / p r e f s / i n t e g r a t i o n s��  � m  14���                                                                                  MACS  alis    .  SSD                            BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  � 2 , API key missing and open Todoist Dev center   � ��� X   A P I   k e y   m i s s i n g   a n d   o p e n   T o d o i s t   D e v   c e n t e r� ��� = BI��� o  BE���� 0 response  � m  EH�� ���  $ s e l e c t i o n� ���� l LY���� I LY����
�� .sysonotfnull��� ��� TEXT� m  LO�� ��� B P l e a s e   s e l e c t   E m a i l   i n   A p p l e   M a i l� �����
�� 
appr� m  RU�� ��� 6 A d d   T a s k   t o   T o d o i s t   f a i l e d !��  � - ' No email selected or not in Apple mail   � ��� N   N o   e m a i l   s e l e c t e d   o r   n o t   i n   A p p l e   m a i l��  p I \i����
�� .sysonotfnull��� ��� TEXT� m  \_�� ��� * S o m e t h i n g   w e n t   w r o n g !� �����
�� 
appr� m  be�� ��� 6 A d d   T a s k   t o   T o d o i s t   f a i l e d !��  l ���� l jj��������  ��  ��  ��    ��� l     ��������  ��  ��  � ��� l      ��� ��  � w q =============================
Removes a chracter from a String
OUTPUT: String
==================================     � �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 R e m o v e s   a   c h r a c t e r   f r o m   a   S t r i n g 
 O U T P U T :   S t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =�  i     I      ������ "0 removecharacter RemoveCharacter  o      ���� 0 thestr theStr 	��	 o      ���� 0 thechar theChar��  ��   l    2

 k     2  r      n      2    ��
�� 
cha  o     ���� 0 thestr theStr o      ���� 0 theclist theClist  r    	 m     �   o      ���� 0 	newstring 	newString  X   
 /�� Z    *���� H       E    !"! o    ���� 0 c  " o    ���� 0 thechar theChar r   ! &#$# b   ! $%&% o   ! "���� 0 	newstring 	newString& o   " #���� 0 c  $ o      ���� 0 	newstring 	newString��  ��  �� 0 c   o    ���� 0 theclist theClist '��' L   0 2(( o   0 1���� 0 	newstring 	newString��   &   theStr(String), theChar(String)    �)) @   t h e S t r ( S t r i n g ) ,   t h e C h a r ( S t r i n g ) *+* l     ��������  ��  ��  + ,-, l      ��./��  . � � ================================================================
FUNTION: Splits a String with a given delimiter
RETURNS: List of String  (List)
==================================================================   / �00�   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   S p l i t s   a   S t r i n g   w i t h   a   g i v e n   d e l i m i t e r 
 R E T U R N S :   L i s t   o f   S t r i n g     ( L i s t ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =- 121 i    343 I      ��5���� 0 stringsplit StringSplit5 676 o      ���� 0 	thestring 	theString7 8��8 o      ���� 0 thedelimiter theDelimiter��  ��  4 k     99 :;: l     ��<=��  < . ( save delimiters to restore old settings   = �>> P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s; ?@? r     ABA n    CDC 1    ��
�� 
txdlD 1     ��
�� 
ascrB o      ���� 0 olddelimiters oldDelimiters@ EFE l   �GH�  G - ' set delimiters to delimiter to be used   H �II N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e dF JKJ r    LML o    �~�~ 0 thedelimiter theDelimiterM n     NON 1    
�}
�} 
txdlO 1    �|
�| 
ascrK PQP l   �{RS�{  R   create the array   S �TT "   c r e a t e   t h e   a r r a yQ UVU r    WXW n    YZY 2    �z
�z 
citmZ o    �y�y 0 	thestring 	theStringX o      �x�x 0 thearray theArrayV [\[ l   �w]^�w  ]   restore the old setting   ^ �__ 0   r e s t o r e   t h e   o l d   s e t t i n g\ `a` r    bcb o    �v�v 0 olddelimiters oldDelimitersc n     ded 1    �u
�u 
txdle 1    �t
�t 
ascra fgf l   �shi�s  h   return the result   i �jj $   r e t u r n   t h e   r e s u l tg k�rk L    ll o    �q�q 0 thearray theArray�r  2 mnm l     �p�o�n�p  �o  �n  n opo l     �m�l�k�m  �l  �k  p qrq l      �jst�j  s � � ================================================================
FUNTION: Convert Scientific Number to a String
RETURNS: String
==================================================================   t �uu�   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   C o n v e r t   S c i e n t i f i c   N u m b e r   t o   a   S t r i n g 
 R E T U R N S :   S t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =r vwv i    xyx I      �iz�h�i  0 numbertostring numberToStringz {�g{ o      �f�f 0 anumber aNumber�g  �h  y k    /|| }~} r     � c     ��� o     �e�e 0 anumber aNumber� m    �d
�d 
ctxt� o      �c�c 0 anumber aNumber~ ��� r    ��� I   �b��a
�b .sysoexecTEXT���     TEXT� b    ��� b    	��� m    �� ���  e c h o   "� o    �`�` 0 anumber aNumber� m   	 
�� ���  "   |   t r   ' , '   ' . '�a  � o      �_�_ 0 anumber aNumber� ��� l   �^�]�\�^  �]  �\  � ��� l   �[���[  � "  check for a negative number   � ��� 8   c h e c k   f o r   a   n e g a t i v e   n u m b e r� ��� r    ��� m    �Z
�Z boovfals� o      �Y�Y 0 
isnegative 
isNegative� ��� Z    4���X�W� =   ��� n    ��� 4    �V�
�V 
cha � m    �U�U � o    �T�T 0 anumber aNumber� m    �� ���  -� k    0�� ��� r    "��� m     �S
�S boovtrue� o      �R�R 0 
isnegative 
isNegative� ��Q� r   # 0��� n   # .��� 7  $ .�P��
�P 
ctxt� m   ( *�O�O � m   + -�N�N��� o   # $�M�M 0 anumber aNumber� o      �L�L 0 anumber aNumber�Q  �X  �W  � ��� l  5 5�K�J�I�K  �J  �I  � ��� Q   5���� k   8�� ��� r   8 C��� l  8 A��H�G� I  8 A�F�E�
�F .sysooffslong    ��� null�E  � �D��
�D 
psof� m   : ;�� ���  .� �C��B
�C 
psin� o   < =�A�A 0 anumber aNumber�B  �H  �G  � o      �@�@ 0 a  � ��� r   D O��� l  D M��?�>� I  D M�=�<�
�= .sysooffslong    ��� null�<  � �;��
�; 
psof� m   F G�� ���  E� �:��9
�: 
psin� o   H I�8�8 0 anumber aNumber�9  �?  �>  � o      �7�7 0 b  � ��� r   P [��� l  P Y��6�5� I  P Y�4�3�
�4 .sysooffslong    ��� null�3  � �2��
�2 
psof� m   R S�� ���  +� �1��0
�1 
psin� o   T U�/�/ 0 anumber aNumber�0  �6  �5  � o      �.�. 0 c  � ��� r   \ g��� l  \ e��-�,� I  \ e�+�*�
�+ .sysooffslong    ��� null�*  � �)��
�) 
psof� m   ^ _�� ���  -� �(��'
�( 
psin� o   ` a�&�& 0 anumber aNumber�'  �-  �,  � o      �%�% 0 d  � ��� l  h h�$�#�"�$  �#  �"  � ��� Z   h ���!� � =  h k��� o   h i�� 0 b  � m   i j��  � l  n {���� Z   n {����� o   n o�� 0 
isnegative 
isNegative� L   r v�� b   r u��� m   r s�� ���  -� o   s t�� 0 anumber aNumber�  � L   y {�� o   y z�� 0 anumber aNumber� + % we do not have an exponential number   � ��� J   w e   d o   n o t   h a v e   a n   e x p o n e n t i a l   n u m b e r�!  �   � ��� l  � �����  �  �  � ��� Z   � �� �� =  � � o   � ��� 0 a   m   � ���    r   � � m   � � �   o      �� 0 	firstpart 	firstPart�   r   � �	 n   � �

 7  � ��
� 
ctxt m   � ���  l  � ��� \   � � o   � ��� 0 a   m   � ��� �  �   o   � ��� 0 anumber aNumber	 o      �� 0 	firstpart 	firstPart�  l  � ��
�	��
  �	  �    r   � � n   � � 7  � ��
� 
ctxt l  � ��� [   � � o   � ��� 0 a   m   � ��� �  �   l  � ��� \   � �  o   � �� �  0 b    m   � ����� �  �   o   � ����� 0 anumber aNumber o      ���� 0 
secondpart 
secondPart !"! l  � ���������  ��  ��  " #$# Z   �%&'(% F   � �)*) =  � �+,+ o   � ����� 0 c  , m   � �����  * =  � �-.- o   � ����� 0 d  . m   � �����  & l  � �/01/ k   � �22 343 r   � �565 m   � ���
�� boovtrue6 o      ���� (0 ispositiveexponent isPositiveExponent4 7��7 r   � �898 n   � �:;: 7  � ���<=
�� 
ctxt< l  � �>����> [   � �?@? o   � ����� 0 b  @ m   � ����� ��  ��  = m   � �������; o   � ����� 0 anumber aNumber9 o      ���� 0 	thirdpart 	thirdPart��  0 !  assume a positive exponent   1 �AA 6   a s s u m e   a   p o s i t i v e   e x p o n e n t' BCB >  � �DED o   � ����� 0 c  E m   � �����  C F��F k   � �GG HIH r   � �JKJ m   � ���
�� boovtrueK o      ���� (0 ispositiveexponent isPositiveExponentI L��L r   � �MNM n   � �OPO 7  � ���QR
�� 
ctxtQ l  � �S����S [   � �TUT o   � ����� 0 b  U m   � ����� ��  ��  R m   � �������P o   � ����� 0 anumber aNumberN o      ���� 0 	thirdpart 	thirdPart��  ��  ( k   �VV WXW r   � �YZY m   � ���
�� boovfalsZ o      ���� (0 ispositiveexponent isPositiveExponentX [��[ r   �\]\ n   �^_^ 7  ���`a
�� 
ctxt` l  � �b����b [   � �cdc o   � ����� 0 b  d m   � ����� ��  ��  a m   � ������_ o   � ����� 0 anumber aNumber] o      ���� 0 	thirdpart 	thirdPart��  $ efe r  ghg c  	iji o  ���� 0 	thirdpart 	thirdPartj m  ��
�� 
nmbrh o      ���� 0 	thirdpart 	thirdPartf klk l ��������  ��  ��  l m��m Z  no��pn o  ���� (0 ispositiveexponent isPositiveExponento k  �qq rsr r  tut o  ���� 0 	firstpart 	firstPartu o      ���� 0 	newnumber 	newNumbers vwv r  xyx o  ���� 0 
secondpart 
secondParty o      ���� 0 theremainder theRemainderw z{z Y  m|��}~��| Q  "h�� k  %Y�� ��� r  %-��� b  %+��� o  %&���� 0 	newnumber 	newNumber� n  &*��� 4  '*���
�� 
cha � o  ()���� 0 i  � o  &'���� 0 
secondpart 
secondPart� o      ���� 0 	newnumber 	newNumber� ���� Z  .Y������� > .3��� o  ./���� 0 theremainder theRemainder� m  /2�� ���  � Z  6U������ = 6=��� l 6;������ I 6;�����
�� .corecnte****       ****� o  67���� 0 theremainder theRemainder��  ��  ��  � m  ;<���� � r  @E��� m  @C�� ���  � o      ���� 0 theremainder theRemainder��  � r  HU��� n  HS��� 7 IS����
�� 
ctxt� m  MO���� � m  PR������� o  HI���� 0 theremainder theRemainder� o      ���� 0 theremainder theRemainder��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � r  ah��� b  af��� o  ab���� 0 	newnumber 	newNumber� m  be�� ���  0� o      ���� 0 	newnumber 	newNumber�� 0 i  } m  ���� ~ o  ���� 0 	thirdpart 	thirdPart��  { ��� l nn��������  ��  ��  � ���� Z  n�������� > ns��� o  no���� 0 theremainder theRemainder� m  or�� ���  � r  v��� b  v}��� b  v{��� o  vw���� 0 	newnumber 	newNumber� m  wz�� ���  .� o  {|���� 0 theremainder theRemainder� o      ���� 0 	newnumber 	newNumber��  ��  ��  ��  p k  ��� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  � o      ���� 0 	newnumber 	newNumber� ��� r  ����� o  ������ 0 	firstpart 	firstPart� o      ���� 0 theremainder theRemainder� ��� Y  ���������� Q  ������ k  ���� ��� r  ����� b  ����� n  ����� 4  �����
�� 
cha � d  ���� o  ������ 0 i  � o  ������ 0 	firstpart 	firstPart� o  ������ 0 	newnumber 	newNumber� o      ���� 0 	newnumber 	newNumber� ���� Z  ��������� > ����� o  ������ 0 theremainder theRemainder� m  ���� ���  � Z  �������� = ����� l �������� I �������
�� .corecnte****       ****� o  ������ 0 theremainder theRemainder��  ��  ��  � m  ������ � r  ����� m  ���� ���  � o      ���� 0 theremainder theRemainder��  � r  ����� n  ����� 7 �����
� 
ctxt� m  ���~�~ � m  ���}�}��� o  ���|�| 0 theremainder theRemainder� o      �{�{ 0 theremainder theRemainder��  ��  ��  � R      �z�y�x
�z .ascrerr ****      � ****�y  �x  � r  ����� b  ����� m  ���� ���  0� o  ���w�w 0 	newnumber 	newNumber� o      �v�v 0 	newnumber 	newNumber�� 0 i  � m  ���u�u � o  ���t�t 0 	thirdpart 	thirdPart��  � ��� l ���s�r�q�s  �r  �q  � ��p� Z  ����o � > �� o  ���n�n 0 theremainder theRemainder m  �� �  � r  �� b  �� b  ��	
	 b  �� o  ���m�m 0 theremainder theRemainder m  �� �  .
 o  ���l�l 0 	newnumber 	newNumber o  ���k�k 0 
secondpart 
secondPart o      �j�j 0 	newnumber 	newNumber�o    r  � b  � b  � m  � �  0 . o  �i�i 0 	newnumber 	newNumber o  �h�h 0 
secondpart 
secondPart o      �g�g 0 	newnumber 	newNumber�p  ��  � R      �f�e�d
�f .ascrerr ****      � ****�e  �d  � Z  �c o  �b�b 0 
isnegative 
isNegative L   b   m   �  - o  �a�a 0 anumber aNumber�c   L   o  �`�` 0 anumber aNumber�  !  l   �_�^�]�_  �^  �]  ! "�\" Z   /#$�[%# o   !�Z�Z 0 
isnegative 
isNegative$ L  $*&& b  $)'(' m  $')) �**  -( o  '(�Y�Y 0 	newnumber 	newNumber�[  % L  -/++ o  -.�X�X 0 	newnumber 	newNumber�\  w ,-, l     �W�V�U�W  �V  �U  - ./. l      �T01�T  0 o i========================
Function: getJSON(theJSON)
Returen: Applescript Record
=========================   1 �22 � = = = = = = = = = = = = = = = = = = = = = = = = 
 F u n c t i o n :   g e t J S O N ( t h e J S O N ) 
 R e t u r e n :   A p p l e s c r i p t   R e c o r d 
 = = = = = = = = = = = = = = = = = = = = = = = = =/ 3�S3 i    454 I      �R6�Q�R 0 getjson getJSON6 7�P7 o      �O�O 0 thejson theJSON�P  �Q  5 k     88 9:9 r     ;<; I    �N=�M
�N .sysodsct****        scpt= l    >�L�K> I    �J?�I
�J .sysoexecTEXT���     TEXT? l    @�H�G@ b     ABA b     CDC m     EE �FF 
 e c h o  D n   GHG 1    �F
�F 
strqH o    �E�E 0 thejson theJSONB m    II �JJ �   |   s e d   - E   ' s / " ( [ ^ " ] + ) " [ [ : s p a c e : ] ] * : [ [ : s p a c e : ] ] * / | \ 1 | : / g '   |   t r   - d   ' \ n \ r '�H  �G  �I  �L  �K  �M  < o      �D�D $0 applescriptvalue applescriptValue: K�CK L    LL o    �B�B $0 applescriptvalue applescriptValue�C  �S       �AMNOPQR�A  M �@�?�>�=�<
�@ .aevtoappnull  �   � ****�? "0 removecharacter RemoveCharacter�> 0 stringsplit StringSplit�=  0 numbertostring numberToString�< 0 getjson getJSONN �; �:�9ST�8
�; .aevtoappnull  �   � ****�: 0 thequery theQuery�9  S �7�6�5�4�7 0 thequery theQuery�6 0 theitem theItem�5 
0 prefix  �4 0 
themessage 
theMessageT � �3�2 , 0 4 8 ;�1�0�/ P�. [ d�- q�, �+�*�)�(�'�&�%�$ ��# ��" ��! �� �������1;X�p�������������������#79�DFRVpr����
�	���������W�� ������������d��������o��������������������������� '+4����������RZs����������������������������
�3 .sysoexecTEXT���     TEXT�2 (0 destinationmailbox destinationMailbox�1 �0 $0 prefixestoremove prefixesToRemove�/ 0 askforthename askForTheName�. 0 todoisttoken todoistToken
�- 
psxf�, 0 
thedatadir 
theDataDir
�+ 
ctxt�* 0 thedatafile theDataFile�)  0 theprojectdata theProjectData
�( 
file
�' .rdwrread****        ****
�& 
cpar�%  �$  
�# .ascrcmnt****      � ****�" 0 thelabeldata theLabelData
�! 
leng�  0 stringsplit StringSplit� $0 theprojectrecord theProjectRecord
� 
cobj� *0 theprojectnamearray theProjectNameArray� 0 
theproject 
theProject� &0 theprojectidarray theProjectIdArray� 0 theprojectid theProjectId� 0 	projectid 	ProjectId�  0 thelabelrecord theLabelRecord� &0 thelabelnamearray theLabelNameArray� 0 thelabel theLabel� "0 thelabelidarray theLabelIdArray� 0 
thelabelid 
theLabelId
� 
psof
� 
psin� 
� .sysooffslong    ��� null� 0 
thesnippet 
theSnippet� 0 theduestring theDueString� 0 curl  �  0 theprojectjson theProjectJson� 0 getjson getJSON�
 "0 thetodoistitems theTodoistItems
�	 
kocl
� .corecnte****       ****� 0 id  �  0 numbertostring numberToString� 0 theid theId� 0 name  � 0 thename theName� 0 thelabeljson theLabelJson
� .miscactvnull��� ��� null
�  
slct�� $0 selectedmessages selectedMessages�� 0 response  �� 0 
themessage 
theMessage
�� 
subj
�� 
sndr�� 0 	thesender 	theSender
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit
�� 
ttxt
�� 
meid�� 0 theurl theURL�� 0 
thecontent 
theContent�� 0 myuuid myUUID�� "0 removecharacter RemoveCharacter
�� 
insh
�� 
mact
�� 
mbxp
�� 
pnam
�� .coremovenull���     obj �� 

�� 
appr
�� .sysonotfnull��� ��� TEXT
�� .GURLGURLnull��� ��� TEXT�8l�j E�O������vE�OfE�O�j E�O��o�j O*�a j /E` O_ a %a &E` OjvE` O *a _ /j a -E` W X  jvE` Oa j O_ a %a &E` OjvE` O *a _ /j a -E` W X  jvE` Oa j O_ a  ,j t*_ a &a !l+ "E` #O H*_ #a $l/a %l+ "E` &O_ &a $l/E` 'O*_ #a $k/a (l+ "E` )O_ )a $l/E` *W X  jE` +Oa ,E` 'Y jE` *Oa -E` 'O_ a  ,j v*_ a &a .l+ "E` /O H*_ /a $l/a 0l+ "E` 1O_ 1a $l/E` 2O*_ /a $k/a 3l+ "E` 4O_ 4a $l/E` 5W X  a 6E` 5Oa 7E` 2Y a 8E` 5Oa 9E` 2O�a &E�O�a : Q�[a \[Z*a ;a <a =�a > ?k\Zi2E` @O_ @a A *_ @a Bl+ "a $k/E` 2Y 	_ @E` 2Y hO�a C Q�[a \[Z*a ;a Da =�a > ?k\Zi2E` @O_ @a E *_ @a Fl+ "a $k/E` 'Y 	_ @E` 'Y hOa G�%a H%j E` IOa J_ I%a K%j E` IO_ Ia &a L  a ME` IY hOa N�%a O%E` PO_ Pj E` QO*_ Qk+ RE` SO H_ S[a Ta $l Ukh *�a V,k+ WE` XO�a Y,E` ZO_ Z_ '  _ XE` *Y h[OY��Oa [�%a \%E` PO_ Pj E` ]O*_ ]k+ RE` SO H_ S[a Ta $l Ukh *�a V,k+ WE` XO�a Y,E` ZO_ Z_ 2  _ XE` 5Y h[OY��Oa ^�*j _O*a `,EE` aO_ aj Uj  a bE` cY�_ aa $i/E` dO_ da e,E` ZO_ da f,E` gO =�[a Ta $l Ukh _ Z� _ Z[a \[Zk�a  ,\Zi2E` ZY h[OY��O� 5a ha i_ Zl jE` kO_ ka l,a m  _ ka n,E` ZY hY hOa o_ da p,%a q%E` rOa s_ Z%a t%_ r%a u%_ g%a v%E` wOa xj E` yO)_ wa zl+ {E` wO)_ wa |l+ {E` wOa }_ w%a ~%_ I%a %_ *%a �%_ 5%a �%�%a �%_ y%a �%E` PO_ Pj E` cO_ ca � a �E` cY Q�a � @ :_ a[a Ta $l Ukh �a �*a ��a �,a �,a �,E/a ��/l �[OY��Y hOa �E` cOPUY 	a �E` cO_ ca �  x_ 'a �  a �E` 'Y a �_ '%E` 'O_ 2a �  a �E` 2Y a �_ 2%E` 2O_ Z[a \[Zk\Za �2a �%_ I%a �%_ '%a �%_ 2%a �a �l �Y R_ ca �  !a �a �a �l �Oa � 	a �j �UY )_ ca �  a �a �a �l �Y a �a �a �l �OPO ������UV���� "0 removecharacter RemoveCharacter�� ��W�� W  ������ 0 thestr theStr�� 0 thechar theChar��  U ������������ 0 thestr theStr�� 0 thechar theChar�� 0 theclist theClist�� 0 	newstring 	newString�� 0 c  V ��������
�� 
cha 
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 3��-E�O�E�O $�[��l kh �� 
��%E�Y h[OY��O�P ��4����XY���� 0 stringsplit StringSplit�� ��Z�� Z  ������ 0 	thestring 	theString�� 0 thedelimiter theDelimiter��  X ���������� 0 	thestring 	theString�� 0 thedelimiter theDelimiter�� 0 olddelimiters oldDelimiters�� 0 thearray theArrayY ������
�� 
ascr
�� 
txdl
�� 
citm�� ��,E�O���,FO��-E�O���,FO�Q ��y����[\����  0 numbertostring numberToString�� ��]�� ]  ���� 0 anumber aNumber��  [ ���������������������������� 0 anumber aNumber�� 0 
isnegative 
isNegative�� 0 a  �� 0 b  �� 0 c  �� 0 d  �� 0 	firstpart 	firstPart�� 0 
secondpart 
secondPart�� (0 ispositiveexponent isPositiveExponent�� 0 	thirdpart 	thirdPart�� 0 	newnumber 	newNumber�� 0 theremainder theRemainder�� 0 i  \ $�������������������������������������������)
�� 
ctxt
�� .sysoexecTEXT���     TEXT
�� 
cha 
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
bool
�� 
nmbr
�� .corecnte****       ****��  ��  ������0��&E�O�%�%j E�OfE�O��k/�  eE�O�[�\[Zl\Zi2E�Y hO�*���� 
E�O*���� 
E�O*���� 
E�O*���� 
E�O�j  � 	�%Y �Y hO�j  �E�Y �[�\[Zk\Z�k2E�O�[�\[Z�k\Z�k2E�O�j 	 	�j a & eE�O�[�\[Z�k\Zi2E�Y 1�j eE�O�[�\[Z�l\Zi2E�Y fE�O�[�\[Z�l\Zi2E�O�a &E�O� x�E�O�E�O Tk�kh  9���/%E�O�a  $�j k  
a E�Y �[�\[Zl\Zi2E�Y hW X  �a %E�[OY��O�a  �a %�%E�Y hY �a E�O�E�O Wk�kh  <��'/�%E�O�a  &�j k  
a E�Y �[�\[Zk\Za 2E�Y hW X  a �%E�[OY��O�a  �a  %�%�%E�Y a !�%�%E�W X  � a "�%Y �O� a #�%Y �R ��5����^_���� 0 getjson getJSON�� ��`�� `  ���� 0 thejson theJSON��  ^ ������ 0 thejson theJSON�� $0 applescriptvalue applescriptValue_ E��I����
�� 
strq
�� .sysoexecTEXT���     TEXT
�� .sysodsct****        scpt�� ��,%�%j j E�O�ascr  ��ޭ