FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � � ================================================
mail2todoist.scpt generate Todosit task from an Email and Achrive the Email
================================================      � 	 	^   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 m a i l 2 t o d o i s t . s c p t   g e n e r a t e   T o d o s i t   t a s k   f r o m   a n   E m a i l   a n d   A c h r i v e   t h e   E m a i l 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =     
  
 i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 thequery theQuery��    k    R       l     ��  ��    , & READ CONFIG and Environment variables     �   L   R E A D   C O N F I G   a n d   E n v i r o n m e n t   v a r i a b l e s      l     ��  ��    r l	set destinationMailbox to do shell script "echo $destinationMailbox" -- if empty email will not be archived     �   � 	 s e t   d e s t i n a t i o n M a i l b o x   t o   d o   s h e l l   s c r i p t   " e c h o   $ d e s t i n a t i o n M a i l b o x "   - -   i f   e m p t y   e m a i l   w i l l   n o t   b e   a r c h i v e d      l     ��  ��    : 4 TODO: Implement config WF for Destination Mailboxes     �   h   T O D O :   I m p l e m e n t   c o n f i g   W F   f o r   D e s t i n a t i o n   M a i l b o x e s       l     �� ! "��   ! m g old mailconfig impl: set destinationMailboxes to {{"Adobe", "Archive"}, {"Gmail", "[Gmail]/All Mail"}}    " � # # �   o l d   m a i l c o n f i g   i m p l :   s e t   d e s t i n a t i o n M a i l b o x e s   t o   { { " A d o b e " ,   " A r c h i v e " } ,   { " G m a i l " ,   " [ G m a i l ] / A l l   M a i l " } }    $ % $ l     �� & '��   & 0 * Prefixes to be removed from email subject    ' � ( ( T   P r e f i x e s   t o   b e   r e m o v e d   f r o m   e m a i l   s u b j e c t %  ) * ) r     	 + , + J      - -  . / . m      0 0 � 1 1  r e :   /  2 3 2 m     4 4 � 5 5 
 o d p :   3  6 7 6 m     8 8 � 9 9  f w :   7  : ; : m     < < � = = 
 f w d :   ;  >�� > m     ? ? � @ @  A W :  ��   , o      ���� $0 prefixestoremove prefixesToRemove *  A B A l  
 
�� C D��   C U O Decide if you want to confirm name of created task. Defaut is message subject.    D � E E �   D e c i d e   i f   y o u   w a n t   t o   c o n f i r m   n a m e   o f   c r e a t e d   t a s k .   D e f a u t   i s   m e s s a g e   s u b j e c t . B  F G F r   
  H I H m   
 ��
�� boovfals I o      ���� 0 askforthename askForTheName G  J K J l   �� L M��   L , & Get todoist token from Workflow value    M � N N L   G e t   t o d o i s t   t o k e n   f r o m   W o r k f l o w   v a l u e K  O P O r     Q R Q I   �� S��
�� .sysoexecTEXT���     TEXT S m     T T � U U $ e c h o   $ t o d o i s t T o k e n��   R o      ���� 0 todoisttoken todoistToken P  V W V l   ��������  ��  ��   W  X Y X Z    Z [�� \ Z >    ] ^ ] o    ���� 0 todoisttoken todoistToken ^ m     _ _ � ` `   [ k   u a a  b c b l   ! d e f d I   !�� g��
�� .sysoexecTEXT���     TEXT g m     h h � i i D m k d i r   - p   " $ { a l f r e d _ w o r k f l o w _ d a t a } "��   e 0 * create WF data directory if not available    f � j j T   c r e a t e   W F   d a t a   d i r e c t o r y   i f   n o t   a v a i l a b l e c  k l k l  " , m n o m r   " , p q p 4   " *�� r
�� 
psxf r l  $ ) s���� s I  $ )�� t��
�� .sysoexecTEXT���     TEXT t m   $ % u u � v v 4 e c h o   $ a l f r e d _ w o r k f l o w _ d a t a��  ��  ��   q o      ���� 0 
thedatadir 
theDataDir n   get WF data directory    o � w w ,   g e t   W F   d a t a   d i r e c t o r y l  x y x l  - : z { | z r   - : } ~ } c   - 6  �  b   - 2 � � � o   - .���� 0 
thedatadir 
theDataDir � m   . 1 � � � � �  : p r o j e c t . t x t � m   2 5��
�� 
ctxt ~ o      ���� 0 thedatafile theDataFile {   Project Data file Path    | � � � .   P r o j e c t   D a t a   f i l e   P a t h y  � � � l  ; ;�� � ���   � 4 .	log ("DataDir: " & POSIX path of theDataFile)    � � � � \ 	 l o g   ( " D a t a D i r :   "   &   P O S I X   p a t h   o f   t h e D a t a F i l e ) �  � � � l  ; ;��������  ��  ��   �  � � � l  ; ;�� � ���   �   Load Mailbox config    � � � � (   L o a d   M a i l b o x   c o n f i g �  � � � l  ; H � � � � r   ; H � � � c   ; D � � � b   ; @ � � � o   ; <���� 0 
thedatadir 
theDataDir � m   < ? � � � � �  : m a i l b o x . t x t � m   @ C��
�� 
ctxt � o      ����  0 themailboxfile theMailboxFile �   Mailbox File Path    � � � � $   M a i l b o x   F i l e   P a t h �  � � � l  I I��������  ��  ��   �  � � � l  I I�� � ���   �  -----------------    � � � � " - - - - - - - - - - - - - - - - - �  � � � l  I I�� � ���   �   Read mailbox config    � � � � (   R e a d   m a i l b o x   c o n f i g �  � � � l  I I�� � ���   �  -----------------    � � � � " - - - - - - - - - - - - - - - - - �  � � � r   I O � � � J   I K����   � o      ���� $0 themailboxconfig theMailboxConfig �  � � � Q   P u � � � � r   S g � � � n   S c � � � 2  _ c��
�� 
cpar � l  S _ ����� � I  S _�� ���
�� .rdwrread****        **** � 4   S [�� �
�� 
file � o   W Z����  0 themailboxfile theMailboxFile��  ��  ��   � o      ���� $0 themailboxconfig theMailboxConfig � R      ������
�� .ascrerr ****      � ****��  ��   � r   o u � � � J   o q����   � o      ���� $0 themailboxconfig theMailboxConfig �  � � � l  v v��������  ��  ��   �  � � � l  v v�� � ���   �  ------------------    � � � � $ - - - - - - - - - - - - - - - - - - �  � � � l  v v�� � ���   �   Read Project Data file    � � � � .   R e a d   P r o j e c t   D a t a   f i l e �  � � � l  v v�� � ���   �  ------------------    � � � � $ - - - - - - - - - - - - - - - - - - �  � � � r   v | � � � J   v x����   � o      ����  0 theprojectdata theProjectData �  � � � Q   } � � � � � r   � � � � � n   � � � � � 2  � ���
�� 
cpar � l  � � ����� � I  � ��� ���
�� .rdwrread****        **** � 4   � ��� �
�� 
file � o   � ����� 0 thedatafile theDataFile��  ��  ��   � o      ����  0 theprojectdata theProjectData � R      ������
�� .ascrerr ****      � ****��  ��   � k   � � � �  � � � r   � � � � � J   � �����   � o      ����  0 theprojectdata theProjectData �  ��� � I  � ��� ���
�� .ascrcmnt****      � **** � l  � � ����� � m   � � � � � � �  f i l e   e m p t y��  ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  ----------------    � � � �   - - - - - - - - - - - - - - - - �  � � � l  � ��� � ���   �   Read label data file    � � � � *   R e a d   l a b e l   d a t a   f i l e �  � � � l  � ��� � ���   �  ----------------     � � � � " - - - - - - - - - - - - - - - -   �  �  � r   � � c   � � b   � � o   � ����� 0 
thedatadir 
theDataDir m   � � �  : l a b e l . t x t m   � ���
�� 
ctxt o      ���� 0 thedatafile theDataFile  	
	 r   � � J   � �����   o      ���� 0 thelabeldata theLabelData
  Q   � � r   � � n   � � 2  � ���
�� 
cpar l  � ����� I  � �����
�� .rdwrread****        **** 4   � ���
�� 
file o   � ����� 0 thedatafile theDataFile��  ��  ��   o      ���� 0 thelabeldata theLabelData R      ������
�� .ascrerr ****      � ****��  ��   k   � �  r   � � J   � �����   o      ���� 0 thelabeldata theLabelData �� I  � �����
�� .ascrcmnt****      � **** l  � � ����  m   � �!! �""  f i l e   e m p t y��  ��  ��  ��   #$# l  � ���������  ��  ��  $ %&% l  � ���'(��  '   --------------------------   ( �)) 4 - - - - - - - - - - - - - - - - - - - - - - - - - -& *+* l  � ���,-��  , $  Get ProjectID from saved data   - �.. <   G e t   P r o j e c t I D   f r o m   s a v e d   d a t a+ /0/ l  � ���12��  1   --------------------------   2 �33 4 - - - - - - - - - - - - - - - - - - - - - - - - - -0 454 Z   �y67��86 >  � �9:9 n   � �;<; 1   � ���
�� 
leng< o   � �����  0 theprojectdata theProjectData: m   � ���  7 k   �i== >?> r   �@A@ I   �	�~B�}�~ 0 stringsplit StringSplitB CDC c   �EFE o   � ��|�|  0 theprojectdata theProjectDataF m   ��{
�{ 
ctxtD G�zG m  HH �II  |�z  �}  A o      �y�y $0 theprojectrecord theProjectRecord? J�xJ Q  iKLMK k  TNN OPO l %QRSQ r  %TUT I  !�wV�v�w 0 stringsplit StringSplitV WXW l Y�u�tY n  Z[Z 4  �s\
�s 
cobj\ m  �r�r [ o  �q�q $0 theprojectrecord theProjectRecord�u  �t  X ]�p] m  ^^ �__  :�p  �v  U o      �o�o *0 theprojectnamearray theProjectNameArrayR * $ Project Name, required for response   S �`` H   P r o j e c t   N a m e ,   r e q u i r e d   f o r   r e s p o n s eP aba r  &2cdc n  &.efe 4  ).�ng
�n 
cobjg m  ,-�m�m f o  &)�l�l *0 theprojectnamearray theProjectNameArrayd o      �k�k 0 
theproject 
theProjectb hih l 33�j�i�h�j  �i  �h  i jkj l 3Glmnl r  3Gopo I  3C�gq�f�g 0 stringsplit StringSplitq rsr l 4<t�e�dt n  4<uvu 4  7<�cw
�c 
cobjw m  :;�b�b v o  47�a�a $0 theprojectrecord theProjectRecord�e  �d  s x�`x m  <?yy �zz  :�`  �f  p o      �_�_ &0 theprojectidarray theProjectIdArraym   Project ID   n �{{    P r o j e c t   I Dk |�^| r  HT}~} n  HP� 4  KP�]�
�] 
cobj� m  NO�\�\ � o  HK�[�[ &0 theprojectidarray theProjectIdArray~ o      �Z�Z 0 theprojectid theProjectId�^  L R      �Y�X�W
�Y .ascrerr ****      � ****�X  �W  M k  \i�� ��� r  \a��� m  \]�V�V  � l     ��U�T� o      �S�S 0 	projectid 	ProjectId�U  �T  � ��R� r  bi��� m  be�� ���  � o      �Q�Q 0 
theproject 
theProject�R  �x  ��  8 k  ly�� ��� r  lq��� m  lm�P�P  � o      �O�O 0 theprojectid theProjectId� ��N� r  ry��� m  ru�� ��� 
 I N B O X� o      �M�M 0 
theproject 
theProject�N  5 ��� l zz�L�K�J�L  �K  �J  � ��� l zz�I���I  �  -------------------------   � ��� 2 - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l zz�H���H  � "  Get LabelID from daved data   � ��� 8   G e t   L a b e l I D   f r o m   d a v e d   d a t a� ��� l zz�G���G  �   -------------------------	   � ��� 4 - - - - - - - - - - - - - - - - - - - - - - - - - 	� ��� Z  z	���F�� > z���� n  z���� 1  }��E
�E 
leng� o  z}�D�D 0 thelabeldata theLabelData� m  ���C�C  � k  ���� ��� r  ����� I  ���B��A�B 0 stringsplit StringSplit� ��� c  ����� o  ���@�@ 0 thelabeldata theLabelData� m  ���?
�? 
ctxt� ��>� m  ���� ���  |�>  �A  � o      �=�=  0 thelabelrecord theLabelRecord� ��� l ���<�;�:�<  �;  �:  � ��9� Q  ������ k  ���� ��� l ������ r  ����� I  ���8��7�8 0 stringsplit StringSplit� ��� l ����6�5� n  ����� 4  ���4�
�4 
cobj� m  ���3�3 � o  ���2�2  0 thelabelrecord theLabelRecord�6  �5  � ��1� m  ���� ���  :�1  �7  � o      �0�0 &0 thelabelnamearray theLabelNameArray� ) # Label Name, required for response    � ��� F   L a b e l   N a m e ,   r e q u i r e d   f o r   r e s p o n s e  � ��� r  ����� n  ����� 4  ���/�
�/ 
cobj� m  ���.�. � o  ���-�- &0 thelabelnamearray theLabelNameArray� o      �,�, 0 thelabel theLabel� ��� l ���+�*�)�+  �*  �)  � ��� l ������ r  ����� I  ���(��'�( 0 stringsplit StringSplit� ��� l ����&�%� n  ����� 4  ���$�
�$ 
cobj� m  ���#�# � o  ���"�"  0 thelabelrecord theLabelRecord�&  �%  � ��!� m  ���� ���  :�!  �'  � o      � �  "0 thelabelidarray theLabelIdArray�  	 Label ID   � ���    L a b e l   I D� ��� r  ����� n  ����� 4  ����
� 
cobj� m  ���� � o  ���� "0 thelabelidarray theLabelIdArray� o      �� 0 
thelabelid 
theLabelId�  � R      ���
� .ascrerr ****      � ****�  �  � k  ���� ��� r  ����� m  ���� ���  � o      �� 0 
thelabelid 
theLabelId� ��� r  ��   m  �� �   o      �� 0 thelabel theLabel�  �9  �F  � k  �	  r  � m  ��		 �

   o      �� 0 
thelabelid 
theLabelId � r  	 m   �   o      �� 0 thelabel theLabel�  �  l 

����  �  �    l 

��    ---------------------    � * - - - - - - - - - - - - - - - - - - - - -  l 

��   E ? Get due data language, Project and Label, if emtpy set default    � ~   G e t   d u e   d a t a   l a n g u a g e ,   P r o j e c t   a n d   L a b e l ,   i f   e m t p y   s e t   d e f a u l t  l 

��    ----------------------    �   , - - - - - - - - - - - - - - - - - - - - - - !"! r  
#$# c  
%&% o  
�� 0 thequery theQuery& m  �

�
 
ctxt$ o      �	�	 0 thequery theQuery" '(' l ����  �  �  ( )*) l �+,�  +   Extract Label from query   , �-- 2   E x t r a c t   L a b e l   f r o m   q u e r y* ./. Z  j01��0 E  232 o  �� 0 thequery theQuery3 m  44 �55  @1 k  f66 787 r  =9:9 n  9;<; 7 9�=>
� 
ctxt= l !5?� ��? [  !5@A@ l "3B����B I "3����C
�� .sysooffslong    ��� null��  C ��DE
�� 
psofD m  &)FF �GG  @E ��H��
�� 
psinH o  ,-���� 0 thequery theQuery��  ��  ��  A m  34���� �   ��  > m  68������< o  ���� 0 thequery theQuery: o      ���� 0 
thesnippet 
theSnippet8 I��I Z  >fJK��LJ E  >EMNM o  >A���� 0 
thesnippet 
theSnippetN m  ADOO �PP   K r  H\QRQ n  HXSTS 4  SX��U
�� 
cobjU m  VW���� T I  HS��V���� 0 stringsplit StringSplitV WXW o  IL���� 0 
thesnippet 
theSnippetX Y��Y m  LOZZ �[[   ��  ��  R o      ���� 0 thelabel theLabel��  L r  _f\]\ o  _b���� 0 
thesnippet 
theSnippet] o      ���� 0 thelabel theLabel��  �  �  / ^_^ l kk��������  ��  ��  _ `a` l kk��bc��  b !  Extract Project from query   c �dd 6   E x t r a c t   P r o j e c t   f r o m   q u e r ya efe Z  k�gh����g E  kpiji o  kl���� 0 thequery theQueryj m  lokk �ll  #h k  s�mm non r  s�pqp n  s�rsr 7 t���tu
�� 
ctxtt l z�v����v [  z�wxw l {�y����y I {�����z
�� .sysooffslong    ��� null��  z ��{|
�� 
psof{ m  �}} �~~  #| ����
�� 
psin o  ������ 0 thequery theQuery��  ��  ��  x m  ������ ��  ��  u m  ��������s o  st���� 0 thequery theQueryq o      ���� 0 
thesnippet 
theSnippeto ���� Z  �������� E  ����� o  ������ 0 
thesnippet 
theSnippet� m  ���� ���   � r  ����� n  ����� 4  �����
�� 
cobj� m  ������ � I  ��������� 0 stringsplit StringSplit� ��� o  ������ 0 
thesnippet 
theSnippet� ���� m  ���� ���   ��  ��  � o      ���� 0 
theproject 
theProject��  � r  ����� o  ������ 0 
thesnippet 
theSnippet� o      ���� 0 
theproject 
theProject��  ��  ��  f ��� l ����������  ��  ��  � ��� l ��������  �   Due Date String Extract    � ��� 2   D u e   D a t e   S t r i n g   E x t r a c t  � ��� r  ����� I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� m  ���� ���  e c h o   "� o  ������ 0 thequery theQuery� m  ���� ��� > "   |   s e d   - E   ' s / # [ A - Z a - z 0 - 9 ] + / / g '��  � o      ���� 0 theduestring theDueString� ��� r  ����� I �������
�� .sysoexecTEXT���     TEXT� b  ����� b  ����� m  ���� ���  e c h o   "� o  ������ 0 theduestring theDueString� m  ���� ��� > "   |   s e d   - E   ' s / @ [ A - Z a - z 0 - 9 ] + / / g '��  � o      ���� 0 theduestring theDueString� ��� l ����������  ��  ��  � ��� Z �������� = ����� c  ����� o  ������ 0 theduestring theDueString� m  ����
�� 
ctxt� m  ���� ���  � r  ����� m  ���� ��� " t o m o r r o w   a t   1 0 : 0 0� o      ���� 0 theduestring theDueString��  ��  � ��� l ��������  ��  ��  � ��� l ������  � " ----------------------------   � ��� 8 - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ������  � 6 0 Get List of all available projects from Todoist   � ��� `   G e t   L i s t   o f   a l l   a v a i l a b l e   p r o j e c t s   f r o m   T o d o i s t� ��� l ������  � + %-------------------------------------   � ��� J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ��������  ��  ��  � ��� r  ��� b  ��� b  	��� m  �� ��� � c u r l   - X   G E T   h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / p r o j e c t s   - H   " A u t h o r i z a t i o n :   B e a r e r  � o  ���� 0 todoisttoken todoistToken� m  	�� ���  "� o      ���� 0 curl  � ��� l ���� r  ��� I �����
�� .sysoexecTEXT���     TEXT� o  ���� 0 curl  ��  � o      ����  0 theprojectjson theProjectJson�   get Json from response   � ��� .   g e t   J s o n   f r o m   r e s p o n s e� ��� l ��������  ��  ��  � ��� l ������  �   Read JSON into AS Record   � ��� 2   R e a d   J S O N   i n t o   A S   R e c o r d� ��� r  *��� I  &������� 0 getjson getJSON� ���� o  "����  0 theprojectjson theProjectJson��  ��  � o      ���� "0 thetodoistitems theTodoistItems� ��� l ++��������  ��  ��  � ��� X  +t��� � k  Ao  r  AO I  AK������  0 numbertostring numberToString �� n  BG	 o  CG���� 0 id  	 o  BC���� 0 theitem theItem��  ��   o      ���� 0 theid theId 

 r  PY n  PU o  QU���� 0 name   o  PQ���� 0 theitem theItem o      ���� 0 thename theName �� Z Zo���� = Za o  Z]���� 0 thename theName o  ]`���� 0 
theproject 
theProject r  dk o  dg���� 0 theid theId o      ���� 0 theprojectid theProjectId��  ��  ��  �� 0 theitem theItem  o  .1���� "0 thetodoistitems theTodoistItems�  l uu��������  ��  ��    l uu����    ----------------------    � , - - - - - - - - - - - - - - - - - - - - - -  l uu� !�    , & Get List of all lablels from Tododist   ! �"" L   G e t   L i s t   o f   a l l   l a b l e l s   f r o m   T o d o d i s t #$# l uu�~%&�~  % % ------------------------------	   & �'' > - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	$ ()( r  u�*+* b  u~,-, b  uz./. m  ux00 �11 � c u r l   - X   G E T   h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / l a b e l s   - H   " A u t h o r i z a t i o n :   B e a r e r  / o  xy�}�} 0 todoisttoken todoistToken- m  z}22 �33  "+ o      �|�| 0 curl  ) 454 l ��6786 r  ��9:9 I ���{;�z
�{ .sysoexecTEXT���     TEXT; o  ���y�y 0 curl  �z  : o      �x�x 0 thelabeljson theLabelJson7   get Json from response   8 �<< .   g e t   J s o n   f r o m   r e s p o n s e5 =>= l ���w�v�u�w  �v  �u  > ?@? l ���tAB�t  A   Read JSON into AS Record   B �CC 2   R e a d   J S O N   i n t o   A S   R e c o r d@ DED r  ��FGF I  ���sH�r�s 0 getjson getJSONH I�qI o  ���p�p 0 thelabeljson theLabelJson�q  �r  G o      �o�o "0 thetodoistitems theTodoistItemsE JKJ l ���n�m�l�n  �m  �l  K LML X  ��N�kON k  ��PP QRQ r  ��STS I  ���jU�i�j  0 numbertostring numberToStringU V�hV n  ��WXW o  ���g�g 0 id  X o  ���f�f 0 theitem theItem�h  �i  T o      �e�e 0 theid theIdR YZY r  ��[\[ n  ��]^] o  ���d�d 0 name  ^ o  ���c�c 0 theitem theItem\ o      �b�b 0 thename theNameZ _�a_ Z ��`a�`�_` = ��bcb o  ���^�^ 0 thename theNamec o  ���]�] 0 thelabel theLabela r  ��ded o  ���\�\ 0 theid theIde o      �[�[ 0 
thelabelid 
theLabelId�`  �_  �a  �k 0 theitem theItemO o  ���Z�Z "0 thetodoistitems theTodoistItemsM fgf l ���Y�X�W�Y  �X  �W  g hih l ���Vjk�V  j   --------------------------   k �ll 4 - - - - - - - - - - - - - - - - - - - - - - - - - -i mnm l ���Uop�U  o #  Handle Email from Apple Mail   p �qq :   H a n d l e   E m a i l   f r o m   A p p l e   M a i ln rsr l ���Ttu�T  t   --------------------------   u �vv 4 - - - - - - - - - - - - - - - - - - - - - - - - - -s w�Sw O  �uxyx k  �tzz {|{ I ���R�Q�P
�R .miscactvnull��� ��� null�Q  �P  | }~} l ���� r  ����� e  ���� 1  ���O
�O 
slct� o      �N�N $0 selectedmessages selectedMessages� ) # get selected Message in Apple Mail   � ��� F   g e t   s e l e c t e d   M e s s a g e   i n   A p p l e   M a i l~ ��� l ���M���M  � ? 9 checks if a message was selected or bypass task creation   � ��� r   c h e c k s   i f   a   m e s s a g e   w a s   s e l e c t e d   o r   b y p a s s   t a s k   c r e a t i o n� ��L� Z  �t���K�� = ���� l ���J�I� I ��H��G
�H .corecnte****       ****� o  � �F�F $0 selectedmessages selectedMessages�G  �J  �I  � m  �E�E  � r  	��� m  	�� ���  $ s e l e c t i o n� o      �D�D 0 response  �K  � k  t�� ��� l ���� r  ��� n  ��� 4 �C�
�C 
cobj� m  �B�B��� o  �A�A $0 selectedmessages selectedMessages� o      �@�@ 0 
themessage 
theMessage� $  we need only the last message   � ��� <   w e   n e e d   o n l y   t h e   l a s t   m e s s a g e� ��� l  +���� r   +��� n   '��� 1  #'�?
�? 
subj� o   #�>�> 0 
themessage 
theMessage� o      �=�= 0 thename theName� &   subject is the name of the task   � ��� @   s u b j e c t   i s   t h e   n a m e   o f   t h e   t a s k� ��� l ,7���� r  ,7��� n  ,3��� 1  /3�<
�< 
sndr� o  ,/�;�; 0 
themessage 
theMessage� o      �:�: 0 	thesender 	theSender� #  get the senders email adress   � ��� :   g e t   t h e   s e n d e r s   e m a i l   a d r e s s� ��� l 88�9�8�7�9  �8  �7  � ��� l 88�6���6  � * $ remove prefixes as configured above   � ��� H   r e m o v e   p r e f i x e s   a s   c o n f i g u r e d   a b o v e� ��� X  8v��5�� Z  Lq���4�3� C  LQ��� o  LO�2�2 0 thename theName� o  OP�1�1 
0 prefix  � r  Tm��� n  Ti��� 7 Wi�0��
�0 
ctxt� l ]e��/�.� [  ]e��� m  ^_�-�- � l _d��,�+� n  _d��� 1  `d�*
�* 
leng� o  _`�)�) 
0 prefix  �,  �+  �/  �.  � m  fh�(�(��� o  TW�'�' 0 thename theName� o      �&�& 0 thename theName�4  �3  �5 
0 prefix  � o  ;<�%�% $0 prefixestoremove prefixesToRemove� ��� l ww�$�#�"�$  �#  �"  � ��� l ww�!���!  � 1 + if confgured pop up dialog to change title   � ��� V   i f   c o n f g u r e d   p o p   u p   d i a l o g   t o   c h a n g e   t i t l e� ��� Z  w���� �� o  wx�� 0 askforthename askForTheName� k  {��� ��� r  {���� I {����
� .sysodlogaskr        TEXT� m  {~�� ���  E n t e r   t a s k   n a m e� ���
� 
dtxt� o  ���� 0 thename theName�  � 1      �
� 
rslt� ��� Z  ������� = ����� n  ����� 1  ���
� 
bhit� 1  ���
� 
rslt� m  ���� ���  O K� r  ����� n  ����� 1  ���
� 
ttxt� 1  ���
� 
rslt� o      �� 0 thename theName�  � L  ����  �  �   �  � ��� l ������  �  �  � ��� l ������  � , &--------------------------------------   � ��� L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ������  � 3 - Get Destination Mailbox for selected message   � �   Z   G e t   D e s t i n a t i o n   M a i l b o x   f o r   s e l e c t e d   m e s s a g e�  l ����   , &--------------------------------------    � L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  r  ��	 m  ��

 �  	 o      �
�
 (0 destinationmailbox destinationMailbox  l ���	�	    old impl    �  o l d   i m p l  l  ����  93set theAccount to name of the account of mailbox of (item 1 of selectedMessages)				repeat with c in destinationMailboxes					set theAccountName to item 1 of c					set theMailboxName to item 2 of c					if theAccount is equal to theAccountName then set destinationMailbox to theMailboxName				end repeat    �f s e t   t h e A c c o u n t   t o   n a m e   o f   t h e   a c c o u n t   o f   m a i l b o x   o f   ( i t e m   1   o f   s e l e c t e d M e s s a g e s )  	 	 	 	 r e p e a t   w i t h   c   i n   d e s t i n a t i o n M a i l b o x e s  	 	 	 	 	 s e t   t h e A c c o u n t N a m e   t o   i t e m   1   o f   c  	 	 	 	 	 s e t   t h e M a i l b o x N a m e   t o   i t e m   2   o f   c  	 	 	 	 	 i f   t h e A c c o u n t   i s   e q u a l   t o   t h e A c c o u n t N a m e   t h e n   s e t   d e s t i n a t i o n M a i l b o x   t o   t h e M a i l b o x N a m e  	 	 	 	 e n d   r e p e a t  l ����    	 new impl    �    n e w   i m p l  Z  �G�� > ��  n  ��!"! 1  ���
� 
leng" o  ���� $0 themailboxconfig theMailboxConfig  m  ����   k  �C## $%$ r  ��&'& n  ��()( 1  ���
� 
pnam) l ��*� ��* n  ��+,+ m  ����
�� 
mact, n  ��-.- m  ����
�� 
mbxp. l ��/����/ n  ��010 4  ����2
�� 
cobj2 m  ������ 1 o  ������ $0 selectedmessages selectedMessages��  ��  �   ��  ' o      ���� 0 
theaccount 
theAccount% 343 X  �A5��65 Z  �<78����7 E  ��9:9 o  ������ 0 c  : m  ��;; �<<  :8 k  �8== >?> r  �@A@ n �BCB I  ���D���� 0 stringsplit StringSplitD EFE o  ������ 0 c  F G��G m  � HH �II  :��  ��  C  f  ��A o      ���� 0 thevaluepair theValuePair? JKJ r  	LML n  	NON 4  ��P
�� 
cobjP m  ���� O o  	���� 0 thevaluepair theValuePairM o      ����  0 theaccountname theAccountNameK QRQ r  "STS n  UVU 4  ��W
�� 
cobjW m  ���� V o  ���� 0 thevaluepair theValuePairT o      ����  0 themailboxname theMailboxNameR X��X Z #8YZ����Y = #*[\[ o  #&���� 0 
theaccount 
theAccount\ o  &)����  0 theaccountname theAccountNameZ r  -4]^] o  -0����  0 themailboxname theMailboxName^ o      ���� (0 destinationmailbox destinationMailbox��  ��  ��  ��  ��  �� 0 c  6 o  ������ $0 themailboxconfig theMailboxConfig4 _��_ l BB��������  ��  ��  ��  �  �   `a` l HH��������  ��  ��  a bcb l HH��de��  d ' !display dialog destinationMailbox   e �ff B d i s p l a y   d i a l o g   d e s t i n a t i o n M a i l b o xc ghg l HH��������  ��  ��  h iji l HH��kl��  k e _ URL for Apple Mail Message, adding to the task note. Click in Todoist to open message in Mail.   l �mm �   U R L   f o r   A p p l e   M a i l   M e s s a g e ,   a d d i n g   t o   t h e   t a s k   n o t e .   C l i c k   i n   T o d o i s t   t o   o p e n   m e s s a g e   i n   M a i l .j non r  H[pqp b  HWrsr b  HStut m  HKvv �ww  m e s s a g e : / / % 3 cu n KRxyx 1  NR��
�� 
meidy o  KN���� 0 
themessage 
theMessages m  SVzz �{{  % 3 eq o      ���� 0 theurl theURLo |}| l \\��������  ��  ��  } ~~ l \\������  � : 4 build content string including name, url and sender   � ��� h   b u i l d   c o n t e n t   s t r i n g   i n c l u d i n g   n a m e ,   u r l   a n d   s e n d e r ��� l \\������  �   clean name string   � ��� $   c l e a n   n a m e   s t r i n g� ��� r  \k��� n \g��� I  ]g������� "0 removecharacter RemoveCharacter� ��� o  ]`���� 0 thename theName� ���� m  `c�� ���  '��  ��  �  f  \]� o      ���� 0 thename theName� ��� r  l{��� n lw��� I  mw������� "0 removecharacter RemoveCharacter� ��� o  mp���� 0 	thesender 	theSender� ���� m  ps�� ���  '��  ��  �  f  lm� o      ���� 0 	thesender 	theSender� ��� r  |���� n |���� I  }�������� "0 removecharacter RemoveCharacter� ��� o  }����� 0 thename theName� ���� m  ���� ���  "��  ��  �  f  |}� o      ���� 0 thename theName� ��� r  ����� n ����� I  ��������� "0 removecharacter RemoveCharacter� ��� o  ������ 0 	thesender 	theSender� ���� m  ���� ���  "��  ��  �  f  ��� o      ���� 0 	thesender 	theSender� ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  [� o  ������ 0 thename theName� m  ���� ���  ] (� o  ������ 0 theurl theURL� m  ���� ��� 
 )   -   [� o  ������ 0 	thesender 	theSender� m  ���� ���  ]� o      ���� 0 
thecontent 
theContent� ��� l ����������  ��  ��  � ��� l ��������  � ( " genearte a uuid for task creation   � ��� D   g e n e a r t e   a   u u i d   f o r   t a s k   c r e a t i o n� ��� r  ����� I �������
�� .sysoexecTEXT���     TEXT� m  ���� ���  u u i d g e n��  � o      ���� 0 myuuid myUUID� ��� l ����������  ��  ��  � ��� l ��������  � U O build curl command based on API v8 beta. This may be changed by totodist later   � ��� �   b u i l d   c u r l   c o m m a n d   b a s e d   o n   A P I   v 8   b e t a .   T h i s   m a y   b e   c h a n g e d   b y   t o t o d i s t   l a t e r� ��� l ����������  ��  ��  � ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ��� � b  �� m  �� � � c u r l   " h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / t a s k s "   - X   P O S T   - - d a t a   ' { " c o n t e n t " :   " o  ������ 0 
thecontent 
theContent  m  �� � $ " ,   " d u e _ s t r i n g " :   "� o  ������ 0 theduestring theDueString� m  �� � ` " ,   " d u e _ l a n g " :   " e n " ,   " p r i o r i t y " :   4 , " p r o j e c t _ i d " :� o  ������ 0 theprojectid theProjectId� m  ��		 �

  , " l a b e l _ i d s " : [� o  ������ 0 
thelabelid 
theLabelId� m  �� � � ] , " c o m m e n t _ c o u n t " :   0 ,   " c o m p l e t e d " :   f a l s e } '   - H   " C o n t e n t - T y p e :   a p p l i c a t i o n / j s o n "   - H   " A u t h o r i z a t i o n :   B e a r e r  � o  ������ 0 todoisttoken todoistToken� m  �� � ( "   - H   " X - R e q u e s t - I d :  � o  ������ 0 myuuid myUUID� m  �� �  "� o      ���� 0 curl  �  l ������    display dialog curl    � & d i s p l a y   d i a l o g   c u r l  l ����������  ��  ��    l ������   $  exec command and get response    � <   e x e c   c o m m a n d   a n d   g e t   r e s p o n s e  r  �	  I ���!��
�� .sysoexecTEXT���     TEXT! o  ����� 0 curl  ��    o      ���� 0 response   "#" l 

��$%��  $  log (response)   % �&&  l o g   ( r e s p o n s e )# '(' l 

��������  ��  ��  ( )*) l 

��+,��  + J D finally if response results success id will be part of the response   , �-- �   f i n a l l y   i f   r e s p o n s e   r e s u l t s   s u c c e s s   i d   w i l l   b e   p a r t   o f   t h e   r e s p o n s e* ./. Z  
r01��20 H  
33 E  
454 o  
���� 0 response  5 m  66 �77 
 " i d " :1 r  898 m  :: �;;  $ f a i l e d9 o      ���� 0 response  ��  2 k  r<< =>= Z  j?@����? > &ABA o  "���� (0 destinationmailbox destinationMailboxB m  "%CC �DD  @ X  )fE��FE k  ?aGG HIH l ??��JK��  J &   Archive to destination mailbox    K �LL @   A r c h i v e   t o   d e s t i n a t i o n   m a i l b o x  I M��M I ?a��NO
�� .coremovenull���     obj N o  ?@���� 0 
themessage 
theMessageO ��P��
�� 
inshP n  C]QRQ 4  V]��S
�� 
mbxpS o  Y\���� (0 destinationmailbox destinationMailboxR 4  CV�T
� 
mactT l GUU�~�}U n  GUVWV 1  PT�|
�| 
pnamW l GPX�{�zX n  GPYZY m  LP�y
�y 
mactZ l GL[�x�w[ n  GL\]\ m  HL�v
�v 
mbxp] o  GH�u�u 0 
themessage 
theMessage�x  �w  �{  �z  �~  �}  ��  ��  �� 0 
themessage 
theMessageF o  ,/�t�t $0 selectedmessages selectedMessages��  ��  > ^�s^ r  kr_`_ m  knaa �bb  $ s u c c e s s` o      �r�r 0 response  �s  / cdc l ss�q�p�o�q  �p  �o  d e�ne l ss�m�l�k�m  �l  �k  �n  �L  y m  ��fff                                                                                  emal  alis      SSD                            BD ����Mail.app                                                       ����            ����  
 cu             Applications  /:Applications:Mail.app/    M a i l . a p p    S S D  Applications/Mail.app   / ��  �S  ��   \ r  xghg m  x{ii �jj  $ a p i k e yh o      �j�j 0 response   Y klk l ���imn�i  m 2 ,--------------------------------------------   n �oo X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -l pqp l ���hrs�h  r 8 2 handle response success,error and missing api key   s �tt d   h a n d l e   r e s p o n s e   s u c c e s s , e r r o r   a n d   m i s s i n g   a p i   k e yq uvu l ���gwx�g  w 2 ,--------------------------------------------   x �yy X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -v z{z Z  �P|}~| = ����� o  ���f�f 0 response  � m  ���� ���  $ s u c c e s s} l ������ k  ���� ��� l ���e���e  � ; 5 Format response wether Label or Project is available   � ��� j   F o r m a t   r e s p o n s e   w e t h e r   L a b e l   o r   P r o j e c t   i s   a v a i l a b l e� ��� Z  �����d�� = ����� o  ���c�c 0 
theproject 
theProject� m  ���� ���  � r  ����� m  ���� ���  � o      �b�b 0 
theproject 
theProject�d  � r  ����� b  ����� m  ���� ���  #� o  ���a�a 0 
theproject 
theProject� o      �`�` 0 
theproject 
theProject� ��� l ���_�^�]�_  �^  �]  � ��� Z  �����\�� = ����� o  ���[�[ 0 thelabel theLabel� m  ���� ���  � r  ����� m  ���� ���  � o      �Z�Z 0 thelabel theLabel�\  � r  ����� b  ����� m  ���� ���  @� o  ���Y�Y 0 thelabel theLabel� o      �X�X 0 thelabel theLabel� ��W� I ���V��
�V .sysonotfnull��� ��� TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� l ����U�T� n  ����� 7 ���S��
�S 
ctxt� m  ���R�R � m  ���Q�Q 
� o  ���P�P 0 thename theName�U  �T  � m  ���� ���  . . . ,� o  ���O�O 0 theduestring theDueString� m  ���� ���    
!�  � o  ���N�N 0 
theproject 
theProject� m  ���� ���   � o  ���M�M 0 thelabel theLabel� �L��K
�L 
appr� m  ���� ��� * T o d o i s t   t a s k   c r e a t e d !�K  �W  �   SUCCESS   � ���    S U C C E S S~ ��� =  ��� o   �J�J 0 response  � m  �� ���  $ a p i k e y� ��� l 
&���� k  
&�� ��� I 
�I��
�I .sysonotfnull��� ��� TEXT� m  
�� ��� � A d d   T o d i s t   A P I   K e y   t o   w o r k f l o w   c o n f i g u r a t i o n ,   [ X ]   s y m b o l   i n   W F   d e t a i l s� �H��G
�H 
appr� m  �� ��� D T o d o i s t   A P I   K e y   m i s s i n g   o r   i n v a l i d�G  � ��F� O  &��� I %�E��D
�E .GURLGURLnull��� ��� TEXT� m  !�� ��� L h t t p s : / / t o d o i s t . c o m / p r e f s / i n t e g r a t i o n s�D  � m  ���                                                                                  MACS  alis    .  SSD                            BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  �F  � 2 , API key missing and open Todoist Dev center   � ��� X   A P I   k e y   m i s s i n g   a n d   o p e n   T o d o i s t   D e v   c e n t e r� ��� = )0��� o  ),�C�C 0 response  � m  ,/�� ���  $ s e l e c t i o n� ��B� l 3@���� I 3@�A��
�A .sysonotfnull��� ��� TEXT� m  36�� ��� B P l e a s e   s e l e c t   E m a i l   i n   A p p l e   M a i l� �@��?
�@ 
appr� m  9<�� �   6 A d d   T a s k   t o   T o d o i s t   f a i l e d !�?  � - ' No email selected or not in Apple mail   � � N   N o   e m a i l   s e l e c t e d   o r   n o t   i n   A p p l e   m a i l�B   I CP�>
�> .sysonotfnull��� ��� TEXT m  CF � * S o m e t h i n g   w e n t   w r o n g ! �=�<
�= 
appr m  IL � 6 A d d   T a s k   t o   T o d o i s t   f a i l e d !�<  { 	�;	 l QQ�:�9�8�:  �9  �8  �;    

 l     �7�6�5�7  �6  �5    l      �4�4   w q =============================
Removes a chracter from a String
OUTPUT: String
==================================    � �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 R e m o v e s   a   c h r a c t e r   f r o m   a   S t r i n g 
 O U T P U T :   S t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  i     I      �3�2�3 "0 removecharacter RemoveCharacter  o      �1�1 0 thestr theStr �0 o      �/�/ 0 thechar theChar�0  �2   l    2 k     2  r       n     !"! 2    �.
�. 
cha " o     �-�- 0 thestr theStr  o      �,�, 0 theclist theClist #$# r    	%&% m    '' �((  & o      �+�+ 0 	newstring 	newString$ )*) X   
 /+�*,+ Z    *-.�)�(- H    // E    010 o    �'�' 0 c  1 o    �&�& 0 thechar theChar. r   ! &232 b   ! $454 o   ! "�%�% 0 	newstring 	newString5 o   " #�$�$ 0 c  3 o      �#�# 0 	newstring 	newString�)  �(  �* 0 c  , o    �"�" 0 theclist theClist* 6�!6 L   0 277 o   0 1� �  0 	newstring 	newString�!   &   theStr(String), theChar(String)    �88 @   t h e S t r ( S t r i n g ) ,   t h e C h a r ( S t r i n g ) 9:9 l     ����  �  �  : ;<; l      �=>�  = � � ================================================================
FUNTION: Splits a String with a given delimiter
RETURNS: List of String  (List)
==================================================================   > �??�   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   S p l i t s   a   S t r i n g   w i t h   a   g i v e n   d e l i m i t e r 
 R E T U R N S :   L i s t   o f   S t r i n g     ( L i s t ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =< @A@ i    BCB I      �D�� 0 stringsplit StringSplitD EFE o      �� 0 	thestring 	theStringF G�G o      �� 0 thedelimiter theDelimiter�  �  C k     HH IJI l     �KL�  K . ( save delimiters to restore old settings   L �MM P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g sJ NON r     PQP n    RSR 1    �
� 
txdlS 1     �
� 
ascrQ o      �� 0 olddelimiters oldDelimitersO TUT l   �VW�  V - ' set delimiters to delimiter to be used   W �XX N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e dU YZY r    [\[ o    �� 0 thedelimiter theDelimiter\ n     ]^] 1    
�
� 
txdl^ 1    �
� 
ascrZ _`_ l   �ab�  a   create the array   b �cc "   c r e a t e   t h e   a r r a y` ded r    fgf n    hih 2    �
� 
citmi o    �� 0 	thestring 	theStringg o      �� 0 thearray theArraye jkj l   �
lm�
  l   restore the old setting   m �nn 0   r e s t o r e   t h e   o l d   s e t t i n gk opo r    qrq o    �	�	 0 olddelimiters oldDelimitersr n     sts 1    �
� 
txdlt 1    �
� 
ascrp uvu l   �wx�  w   return the result   x �yy $   r e t u r n   t h e   r e s u l tv z�z L    {{ o    �� 0 thearray theArray�  A |}| l     ����  �  �  } ~~ l     � �����   ��  ��   ��� l      ������  � � � ================================================================
FUNTION: Convert Scientific Number to a String
RETURNS: String
==================================================================   � ����   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   C o n v e r t   S c i e n t i f i c   N u m b e r   t o   a   S t r i n g 
 R E T U R N S :   S t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =� ��� i    ��� I      �������  0 numbertostring numberToString� ���� o      ���� 0 anumber aNumber��  ��  � k    /�� ��� r     ��� c     ��� o     ���� 0 anumber aNumber� m    ��
�� 
ctxt� o      ���� 0 anumber aNumber� ��� r    ��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    	��� m    �� ���  e c h o   "� o    ���� 0 anumber aNumber� m   	 
�� ���  "   |   t r   ' , '   ' . '��  � o      ���� 0 anumber aNumber� ��� l   ��������  ��  ��  � ��� l   ������  � "  check for a negative number   � ��� 8   c h e c k   f o r   a   n e g a t i v e   n u m b e r� ��� r    ��� m    ��
�� boovfals� o      ���� 0 
isnegative 
isNegative� ��� Z    4������� =   ��� n    ��� 4    ���
�� 
cha � m    ���� � o    ���� 0 anumber aNumber� m    �� ���  -� k    0�� ��� r    "��� m     ��
�� boovtrue� o      ���� 0 
isnegative 
isNegative� ���� r   # 0��� n   # .��� 7  $ .����
�� 
ctxt� m   ( *���� � m   + -������� o   # $���� 0 anumber aNumber� o      ���� 0 anumber aNumber��  ��  ��  � ��� l  5 5��������  ��  ��  � ��� Q   5���� k   8�� ��� r   8 C��� l  8 A������ I  8 A�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   : ;�� ���  .� �����
�� 
psin� o   < =���� 0 anumber aNumber��  ��  ��  � o      ���� 0 a  � ��� r   D O��� l  D M������ I  D M�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   F G�� ���  E� �����
�� 
psin� o   H I���� 0 anumber aNumber��  ��  ��  � o      ���� 0 b  � ��� r   P [��� l  P Y������ I  P Y�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   R S�� ���  +� �����
�� 
psin� o   T U���� 0 anumber aNumber��  ��  ��  � o      ���� 0 c  � ��� r   \ g��� l  \ e������ I  \ e�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   ^ _�� ���  -� �����
�� 
psin� o   ` a���� 0 anumber aNumber��  ��  ��  � o      ���� 0 d  � ��� l  h h��������  ��  ��  � ��� Z   h ������� =  h k��� o   h i���� 0 b  � m   i j����  � l  n {���� Z   n { ��  o   n o���� 0 
isnegative 
isNegative L   r v b   r u m   r s �  - o   s t���� 0 anumber aNumber��   L   y { o   y z���� 0 anumber aNumber� + % we do not have an exponential number   � �		 J   w e   d o   n o t   h a v e   a n   e x p o n e n t i a l   n u m b e r��  ��  � 

 l  � ���������  ��  ��    Z   � ��� =  � � o   � ����� 0 a   m   � �����   r   � � m   � � �   o      ���� 0 	firstpart 	firstPart��   r   � � n   � � 7  � ���
�� 
ctxt m   � �����  l  � ����� \   � � o   � ����� 0 a   m   � ����� ��  ��   o   � ����� 0 anumber aNumber o      ���� 0 	firstpart 	firstPart  !  l  � ���������  ��  ��  ! "#" r   � �$%$ n   � �&'& 7  � ���()
�� 
ctxt( l  � �*����* [   � �+,+ o   � ����� 0 a  , m   � ����� ��  ��  ) l  � �-����- \   � �./. o   � ����� 0 b  / m   � ����� ��  ��  ' o   � ����� 0 anumber aNumber% o      ���� 0 
secondpart 
secondPart# 010 l  � ���������  ��  ��  1 232 Z   �45674 F   � �898 =  � �:;: o   � ����� 0 c  ; m   � �����  9 =  � �<=< o   � ����� 0 d  = m   � �����  5 l  � �>?@> k   � �AA BCB r   � �DED m   � ���
�� boovtrueE o      ���� (0 ispositiveexponent isPositiveExponentC F��F r   � �GHG n   � �IJI 7  � ���KL
�� 
ctxtK l  � �M����M [   � �NON o   � ����� 0 b  O m   � ����� ��  ��  L m   � �������J o   � ��� 0 anumber aNumberH o      �~�~ 0 	thirdpart 	thirdPart��  ? !  assume a positive exponent   @ �PP 6   a s s u m e   a   p o s i t i v e   e x p o n e n t6 QRQ >  � �STS o   � ��}�} 0 c  T m   � ��|�|  R U�{U k   � �VV WXW r   � �YZY m   � ��z
�z boovtrueZ o      �y�y (0 ispositiveexponent isPositiveExponentX [�x[ r   � �\]\ n   � �^_^ 7  � ��w`a
�w 
ctxt` l  � �b�v�ub [   � �cdc o   � ��t�t 0 b  d m   � ��s�s �v  �u  a m   � ��r�r��_ o   � ��q�q 0 anumber aNumber] o      �p�p 0 	thirdpart 	thirdPart�x  �{  7 k   �ee fgf r   � �hih m   � ��o
�o boovfalsi o      �n�n (0 ispositiveexponent isPositiveExponentg j�mj r   �klk n   �mnm 7  ��lop
�l 
ctxto l  � �q�k�jq [   � �rsr o   � ��i�i 0 b  s m   � ��h�h �k  �j  p m   � �g�g��n o   � ��f�f 0 anumber aNumberl o      �e�e 0 	thirdpart 	thirdPart�m  3 tut r  vwv c  	xyx o  �d�d 0 	thirdpart 	thirdParty m  �c
�c 
nmbrw o      �b�b 0 	thirdpart 	thirdPartu z{z l �a�`�_�a  �`  �_  { |�^| Z  }~�]} o  �\�\ (0 ispositiveexponent isPositiveExponent~ k  ��� ��� r  ��� o  �[�[ 0 	firstpart 	firstPart� o      �Z�Z 0 	newnumber 	newNumber� ��� r  ��� o  �Y�Y 0 
secondpart 
secondPart� o      �X�X 0 theremainder theRemainder� ��� Y  m��W���V� Q  "h���� k  %Y�� ��� r  %-��� b  %+��� o  %&�U�U 0 	newnumber 	newNumber� n  &*��� 4  '*�T�
�T 
cha � o  ()�S�S 0 i  � o  &'�R�R 0 
secondpart 
secondPart� o      �Q�Q 0 	newnumber 	newNumber� ��P� Z  .Y���O�N� > .3��� o  ./�M�M 0 theremainder theRemainder� m  /2�� ���  � Z  6U���L�� = 6=��� l 6;��K�J� I 6;�I��H
�I .corecnte****       ****� o  67�G�G 0 theremainder theRemainder�H  �K  �J  � m  ;<�F�F � r  @E��� m  @C�� ���  � o      �E�E 0 theremainder theRemainder�L  � r  HU��� n  HS��� 7 IS�D��
�D 
ctxt� m  MO�C�C � m  PR�B�B��� o  HI�A�A 0 theremainder theRemainder� o      �@�@ 0 theremainder theRemainder�O  �N  �P  � R      �?�>�=
�? .ascrerr ****      � ****�>  �=  � r  ah��� b  af��� o  ab�<�< 0 	newnumber 	newNumber� m  be�� ���  0� o      �;�; 0 	newnumber 	newNumber�W 0 i  � m  �:�: � o  �9�9 0 	thirdpart 	thirdPart�V  � ��� l nn�8�7�6�8  �7  �6  � ��5� Z  n����4�3� > ns��� o  no�2�2 0 theremainder theRemainder� m  or�� ���  � r  v��� b  v}��� b  v{��� o  vw�1�1 0 	newnumber 	newNumber� m  wz�� ���  .� o  {|�0�0 0 theremainder theRemainder� o      �/�/ 0 	newnumber 	newNumber�4  �3  �5  �]   k  ��� ��� l ���.�-�,�.  �-  �,  � ��� l ���+�*�)�+  �*  �)  � ��� r  ����� m  ���� ���  � o      �(�( 0 	newnumber 	newNumber� ��� r  ����� o  ���'�' 0 	firstpart 	firstPart� o      �&�& 0 theremainder theRemainder� ��� Y  ����%���$� Q  ������ k  ���� ��� r  ����� b  ����� n  ����� 4  ���#�
�# 
cha � d  ���� o  ���"�" 0 i  � o  ���!�! 0 	firstpart 	firstPart� o  ��� �  0 	newnumber 	newNumber� o      �� 0 	newnumber 	newNumber� ��� Z  ������� > ����� o  ���� 0 theremainder theRemainder� m  ���� ���  � Z  ������� = ����� l ������ I �����
� .corecnte****       ****� o  ���� 0 theremainder theRemainder�  �  �  � m  ���� � r  ����� m  ���� ���  � o      �� 0 theremainder theRemainder�  � r  ����� n  ��   7 ���
� 
ctxt m  ����  m  ������ o  ���� 0 theremainder theRemainder� o      �� 0 theremainder theRemainder�  �  �  � R      ���
� .ascrerr ****      � ****�  �  � r  �� b  �� m  �� �		  0 o  ���
�
 0 	newnumber 	newNumber o      �	�	 0 	newnumber 	newNumber�% 0 i  � m  ���� � o  ���� 0 	thirdpart 	thirdPart�$  � 

 l ������  �  �   � Z  �� > �� o  ���� 0 theremainder theRemainder m  �� �   r  �� b  �� b  �� b  �� o  ��� �  0 theremainder theRemainder m  �� �  . o  ������ 0 	newnumber 	newNumber o  ������ 0 
secondpart 
secondPart o      ���� 0 	newnumber 	newNumber�   r  � b  � !  b  �"#" m  �$$ �%%  0 .# o  ���� 0 	newnumber 	newNumber! o  ���� 0 
secondpart 
secondPart o      ���� 0 	newnumber 	newNumber�  �^  � R      ������
�� .ascrerr ****      � ****��  ��  � Z  &'��(& o  ���� 0 
isnegative 
isNegative' L  )) b  *+* m  ,, �--  -+ o  ���� 0 anumber aNumber��  ( L  .. o  ���� 0 anumber aNumber� /0/ l   ��������  ��  ��  0 1��1 Z   /23��42 o   !���� 0 
isnegative 
isNegative3 L  $*55 b  $)676 m  $'88 �99  -7 o  '(���� 0 	newnumber 	newNumber��  4 L  -/:: o  -.���� 0 	newnumber 	newNumber��  � ;<; l     ��������  ��  ��  < =>= l      ��?@��  ? o i========================
Function: getJSON(theJSON)
Returen: Applescript Record
=========================   @ �AA � = = = = = = = = = = = = = = = = = = = = = = = = 
 F u n c t i o n :   g e t J S O N ( t h e J S O N ) 
 R e t u r e n :   A p p l e s c r i p t   R e c o r d 
 = = = = = = = = = = = = = = = = = = = = = = = = => BCB i    DED I      ��F���� 0 getjson getJSONF G��G o      ���� 0 thejson theJSON��  ��  E k     HH IJI r     KLK I    ��M��
�� .sysodsct****        scptM l    N����N I    ��O��
�� .sysoexecTEXT���     TEXTO l    P����P b     QRQ b     STS m     UU �VV 
 e c h o  T n   WXW 1    ��
�� 
strqX o    ���� 0 thejson theJSONR m    YY �ZZ �   |   s e d   - E   ' s / " ( [ ^ " ] + ) " [ [ : s p a c e : ] ] * : [ [ : s p a c e : ] ] * / | \ 1 | : / g '   |   t r   - d   ' \ n \ r '��  ��  ��  ��  ��  ��  L o      ���� $0 applescriptvalue applescriptValueJ [��[ L    \\ o    ���� $0 applescriptvalue applescriptValue��  C ]^] l     ��������  ��  ��  ^ _`_ l      ��ab��  a y s ===============================
Encode URL
RETURNS: Encoded URL or error string
==================================   b �cc �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 E n c o d e   U R L 
 R E T U R N S :   E n c o d e d   U R L   o r   e r r o r   s t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =` d��d i    efe I      ��g���� 0 	urlencode 	urlEncodeg h��h o      ���� 0 str  ��  ��  f k     ii jkj q      ll ������ 0 str  ��  k m��m Q     nopn L    qq l   r����r I   ��s��
�� .sysoexecTEXT���     TEXTs b    
tut b    vwv m    xx �yy  / b i n / e c h o  w n    z{z 1    ��
�� 
strq{ o    ���� 0 str  u m    	|| �}} b   |   p e r l   - M U R I : : E s c a p e   - l n e   ' p r i n t   u r i _ e s c a p e ( $ _ ) '��  ��  ��  o R      ��~
�� .ascrerr ****      � ****~ o      ���� 0 emsg eMsg �����
�� 
errn� o      ���� 0 enum eNum��  p R    ����
�� .ascrerr ****      � ****� b    ��� m    �� ��� " C a n ' t   u r l E n c o d e :  � o    ���� 0 emsg eMsg� �����
�� 
errn� o    ���� 0 enum eNum��  ��  ��       �����������  � ������������
�� .aevtoappnull  �   � ****�� "0 removecharacter RemoveCharacter�� 0 stringsplit StringSplit��  0 numbertostring numberToString�� 0 getjson getJSON�� 0 	urlencode 	urlEncode� �� ��������
�� .aevtoappnull  �   � ****�� 0 thequery theQuery��  � ������������ 0 thequery theQuery�� 0 theitem theItem�� 
0 prefix  �� 0 c  �� 0 
themessage 
theMessage� � 0 4 8 < ?������ T���� _ h�� u�� ����� ����������������� �����!��H������^����y����������������������	4��F��������OZk}��������������������~�}�|�{�z�y�x02�wf�v�u�t��s�r�q�p�o��n�m�l�k��j
�i�h�g�f�e;H�d�c�bv�az�`��_��������^��]	6:C�\�[ai��������Z����Y��X������W����� �� $0 prefixestoremove prefixesToRemove�� 0 askforthename askForTheName
�� .sysoexecTEXT���     TEXT�� 0 todoisttoken todoistToken
�� 
psxf�� 0 
thedatadir 
theDataDir
�� 
ctxt�� 0 thedatafile theDataFile��  0 themailboxfile theMailboxFile�� $0 themailboxconfig theMailboxConfig
�� 
file
�� .rdwrread****        ****
�� 
cpar��  ��  ��  0 theprojectdata theProjectData
�� .ascrcmnt****      � ****�� 0 thelabeldata theLabelData
�� 
leng�� 0 stringsplit StringSplit�� $0 theprojectrecord theProjectRecord
�� 
cobj�� *0 theprojectnamearray theProjectNameArray�� 0 
theproject 
theProject�� &0 theprojectidarray theProjectIdArray�� 0 theprojectid theProjectId�� 0 	projectid 	ProjectId��  0 thelabelrecord theLabelRecord�� &0 thelabelnamearray theLabelNameArray�� 0 thelabel theLabel�� "0 thelabelidarray theLabelIdArray�� 0 
thelabelid 
theLabelId
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null�� 0 
thesnippet 
theSnippet�� 0 theduestring theDueString�� 0 curl  ��  0 theprojectjson theProjectJson�� 0 getjson getJSON� "0 thetodoistitems theTodoistItems
�~ 
kocl
�} .corecnte****       ****�| 0 id  �{  0 numbertostring numberToString�z 0 theid theId�y 0 name  �x 0 thename theName�w 0 thelabeljson theLabelJson
�v .miscactvnull��� ��� null
�u 
slct�t $0 selectedmessages selectedMessages�s 0 response  �r 0 
themessage 
theMessage
�q 
subj
�p 
sndr�o 0 	thesender 	theSender
�n 
dtxt
�m .sysodlogaskr        TEXT
�l 
rslt
�k 
bhit
�j 
ttxt�i (0 destinationmailbox destinationMailbox
�h 
mbxp
�g 
mact
�f 
pnam�e 0 
theaccount 
theAccount�d 0 thevaluepair theValuePair�c  0 theaccountname theAccountName�b  0 themailboxname theMailboxName
�a 
meid�` 0 theurl theURL�_ "0 removecharacter RemoveCharacter�^ 0 
thecontent 
theContent�] 0 myuuid myUUID
�\ 
insh
�[ .coremovenull���     obj �Z 

�Y 
appr
�X .sysonotfnull��� ��� TEXT
�W .GURLGURLnull��� ��� TEXT��S������vE�OfE�O�j 	E�O��^�j 	O*��j 	/E�O�a %a &E` O�a %a &E` OjvE` O *a _ /j a -E` W X  jvE` OjvE` O *a _ /j a -E` W X  jvE` Oa j O�a %a &E` OjvE` O *a _ /j a -E` W X  jvE` Oa  j O_ a !,j t*_ a &a "l+ #E` $O H*_ $a %l/a &l+ #E` 'O_ 'a %l/E` (O*_ $a %k/a )l+ #E` *O_ *a %l/E` +W X  jE` ,Oa -E` (Y jE` +Oa .E` (O_ a !,j v*_ a &a /l+ #E` 0O H*_ 0a %l/a 1l+ #E` 2O_ 2a %l/E` 3O*_ 0a %k/a 4l+ #E` 5O_ 5a %l/E` 6W X  a 7E` 6Oa 8E` 3Y a 9E` 6Oa :E` 3O�a &E�O�a ; Q�[a \[Z*a <a =a >�a ? @k\Zi2E` AO_ Aa B *_ Aa Cl+ #a %k/E` 3Y 	_ AE` 3Y hO�a D Q�[a \[Z*a <a Ea >�a ? @k\Zi2E` AO_ Aa F *_ Aa Gl+ #a %k/E` (Y 	_ AE` (Y hOa H�%a I%j 	E` JOa K_ J%a L%j 	E` JO_ Ja &a M  a NE` JY hOa O�%a P%E` QO_ Qj 	E` RO*_ Rk+ SE` TO H_ T[a Ua %l Vkh *�a W,k+ XE` YO�a Z,E` [O_ [_ (  _ YE` +Y h[OY��Oa \�%a ]%E` QO_ Qj 	E` ^O*_ ^k+ SE` TO H_ T[a Ua %l Vkh *�a W,k+ XE` YO�a Z,E` [O_ [_ 3  _ YE` 6Y h[OY��Oa _�*j `O*a a,EE` bO_ bj Vj  a cE` dYc_ ba %i/E` eO_ ea f,E` [O_ ea g,E` hO =�[a Ua %l Vkh _ [� _ [[a \[Zk�a !,\Zi2E` [Y h[OY��O� 5a ia j_ [l kE` lO_ la m,a n  _ la o,E` [Y hY hOa pE` qO_ a !,j �_ ba %k/a r,a s,a t,E` uO c_ [a Ua %l Vkh �a v B)�a wl+ #E` xO_ xa %k/E` yO_ xa %l/E` zO_ u_ y  _ zE` qY hY h[OY��OPY hOa {_ ea |,%a }%E` ~O)_ [a l+ �E` [O)_ ha �l+ �E` hO)_ [a �l+ �E` [O)_ ha �l+ �E` hOa �_ [%a �%_ ~%a �%_ h%a �%E` �Oa �j 	E` �Oa �_ �%a �%_ J%a �%_ +%a �%_ 6%a �%�%a �%_ �%a �%E` QO_ Qj 	E` dO_ da � a �E` dY U_ qa � B <_ b[a Ua %l Vkh �a �*a s�a r,a s,a t,E/a r_ q/l �[OY��Y hOa �E` dOPUY 	a �E` dO_ da �  x_ (a �  a �E` (Y a �_ (%E` (O_ 3a �  a �E` 3Y a �_ 3%E` 3O_ [[a \[Zk\Za �2a �%_ J%a �%_ (%a �%_ 3%a �a �l �Y R_ da �  !a �a �a �l �Oa � 	a �j �UY )_ da �  a �a �a �l �Y a �a �a �l �OP� �V�U�T���S�V "0 removecharacter RemoveCharacter�U �R��R �  �Q�P�Q 0 thestr theStr�P 0 thechar theChar�T  � �O�N�M�L�K�O 0 thestr theStr�N 0 thechar theChar�M 0 theclist theClist�L 0 	newstring 	newString�K 0 c  � �J'�I�H�G
�J 
cha 
�I 
kocl
�H 
cobj
�G .corecnte****       ****�S 3��-E�O�E�O $�[��l kh �� 
��%E�Y h[OY��O�� �FC�E�D���C�F 0 stringsplit StringSplit�E �B��B �  �A�@�A 0 	thestring 	theString�@ 0 thedelimiter theDelimiter�D  � �?�>�=�<�? 0 	thestring 	theString�> 0 thedelimiter theDelimiter�= 0 olddelimiters oldDelimiters�< 0 thearray theArray� �;�:�9
�; 
ascr
�: 
txdl
�9 
citm�C ��,E�O���,FO��-E�O���,FO�� �8��7�6���5�8  0 numbertostring numberToString�7 �4��4 �  �3�3 0 anumber aNumber�6  � �2�1�0�/�.�-�,�+�*�)�(�'�&�2 0 anumber aNumber�1 0 
isnegative 
isNegative�0 0 a  �/ 0 b  �. 0 c  �- 0 d  �, 0 	firstpart 	firstPart�+ 0 
secondpart 
secondPart�* (0 ispositiveexponent isPositiveExponent�) 0 	thirdpart 	thirdPart�( 0 	newnumber 	newNumber�' 0 theremainder theRemainder�& 0 i  � $�%���$�#��"��!� ������������������$,8
�% 
ctxt
�$ .sysoexecTEXT���     TEXT
�# 
cha 
�" 
psof
�! 
psin�  
� .sysooffslong    ��� null
� 
bool
� 
nmbr
� .corecnte****       ****�  �  ����50��&E�O�%�%j E�OfE�O��k/�  eE�O�[�\[Zl\Zi2E�Y hO�*���� 
E�O*���� 
E�O*���� 
E�O*���� 
E�O�j  � 	�%Y �Y hO�j  �E�Y �[�\[Zk\Z�k2E�O�[�\[Z�k\Z�k2E�O�j 	 	�j a & eE�O�[�\[Z�k\Zi2E�Y 1�j eE�O�[�\[Z�l\Zi2E�Y fE�O�[�\[Z�l\Zi2E�O�a &E�O� x�E�O�E�O Tk�kh  9���/%E�O�a  $�j k  
a E�Y �[�\[Zl\Zi2E�Y hW X  �a %E�[OY��O�a  �a %�%E�Y hY �a E�O�E�O Wk�kh  <��'/�%E�O�a  &�j k  
a E�Y �[�\[Zk\Za 2E�Y hW X  a �%E�[OY��O�a  �a  %�%�%E�Y a !�%�%E�W X  � a "�%Y �O� a #�%Y �� �E������ 0 getjson getJSON� ��� �  �� 0 thejson theJSON�  � ��� 0 thejson theJSON� $0 applescriptvalue applescriptValue� U�Y��
� 
strq
� .sysoexecTEXT���     TEXT
� .sysodsct****        scpt� ��,%�%j j E�O�� �f�����
� 0 	urlencode 	urlEncode� �	��	 �  �� 0 str  �  � ���� 0 str  � 0 emsg eMsg� 0 enum eNum� x�|�����
� 
strq
� .sysoexecTEXT���     TEXT� 0 emsg eMsg� � ����
�  
errn�� 0 enum eNum��  
� 
errn�
   ��,%�%j W X  )�l�%ascr  ��ޭ