FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 ptitle pTitle  m        � 	 	 N R e g i s t e r   a n d   h a n d l e   f t d o c : / /   u r l   s c h e m e   
  
 j    �� �� 0 pver pVer  m       �    0 . 0 3      j    �� �� 0 pauthor pAuthor  m       �    R o b   T r e w      j   	 �� �� 0 pdescription pDescription  m   	 
   �  : 
 
 	 U s e   i n   c o n j u n c t i o n   w i t h   t h e   ' F T C o p y A s U R L '   A p p l e s c r i p t   t o   g e t 
 	 a   U R L   w h i c h   o p e n s   t h e   s p e c i f i e d   d o c u m e n t ,   o p t i o n a l l y   r e s t o r i n g   s e l e c t i o n   a n d   f i l t e r   s t a t e . 
 
      l     ��������  ��  ��        l     ��  ��    Q K Registers the url-scheme ftdoc://encoded-file-path with optional switches:     �   �   R e g i s t e r s   t h e   u r l - s c h e m e   f t d o c : / / e n c o d e d - f i l e - p a t h   w i t h   o p t i o n a l   s w i t c h e s :     !   l     �� " #��   " ; 5[?nodepath=//@due] -- nodepath used to apply a filter    # � $ $ j [ ? n o d e p a t h = / / @ d u e ]   - -   n o d e p a t h   u s e d   t o   a p p l y   a   f i l t e r !  % & % l     �� ' (��   ' : 4[?selnpath=] -- nodepath used to specify a selection    ( � ) ) h [ ? s e l n p a t h = ]   - -   n o d e p a t h   u s e d   t o   s p e c i f y   a   s e l e c t i o n &  * + * l     �� , -��   , % [?find=] -- text string to find    - � . . > [ ? f i n d = ]   - -   t e x t   s t r i n g   t o   f i n d +  / 0 / l     �� 1 2��   1 . ([?line=N][?startoffset=0][?endoffset=-1]    2 � 3 3 P [ ? l i n e = N ] [ ? s t a r t o f f s e t = 0 ] [ ? e n d o f f s e t = - 1 ] 0  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8 1 + where line is zero-based and defaults to 0    9 � : : V   w h e r e   l i n e   i s   z e r o - b a s e d   a n d   d e f a u l t s   t o   0 7  ; < ; l     �� = >��   = T N startoffset is an offset of a number of characters from the start of the line    > � ? ? �   s t a r t o f f s e t   i s   a n   o f f s e t   o f   a   n u m b e r   o f   c h a r a c t e r s   f r o m   t h e   s t a r t   o f   t h e   l i n e <  @ A @ l     �� B C��   B   endoffset is ditto    C � D D &   e n d o f f s e t   i s   d i t t o A  E F E l     ��������  ��  ��   F  G H G l     �� I J��   I 5 / and the url opens the document in FoldingText:    J � K K ^   a n d   t h e   u r l   o p e n s   t h e   d o c u m e n t   i n   F o l d i n g T e x t : H  L M L l     �� N O��   N = 7 1. Applying any specified ?nodepath= value as a filter    O � P P n   1 .   A p p l y i n g   a n y   s p e c i f i e d   ? n o d e p a t h =   v a l u e   a s   a   f i l t e r M  Q R Q l     �� S T��   S H B 2. Selecting the first line that matches (in the following order)    T � U U �   2 .   S e l e c t i n g   t h e   f i r s t   l i n e   t h a t   m a t c h e s   ( i n   t h e   f o l l o w i n g   o r d e r ) R  V W V l     �� X Y��   X 2 ,	--	the value of ?selnpath= ?find= or ?line=    Y � Z Z X 	 - - 	 t h e   v a l u e   o f   ? s e l n p a t h =   ? f i n d =   o r   ? l i n e = W  [ \ [ l     �� ] ^��   ] o i 3. Restricts the selection to a subset of a line selected by number if startoffset > 0 or endoffset � -1    ^ � _ _ �   3 .   R e s t r i c t s   t h e   s e l e c t i o n   t o   a   s u b s e t   o f   a   l i n e   s e l e c t e d   b y   n u m b e r   i f   s t a r t o f f s e t   >   0   o r   e n d o f f s e t  "`   - 1 \  ` a ` l     ��������  ��  ��   a  b c b l     �� d e��   d o i for the approach to registering and handling a url with an applescript.app and the .plist in its bundle,    e � f f �   f o r   t h e   a p p r o a c h   t o   r e g i s t e r i n g   a n d   h a n d l i n g   a   u r l   w i t h   a n   a p p l e s c r i p t . a p p   a n d   t h e   . p l i s t   i n   i t s   b u n d l e , c  g h g l     �� i j��   i C = see http://www.macosxautomation.com/applescript/linktrigger/    j � k k z   s e e   h t t p : / / w w w . m a c o s x a u t o m a t i o n . c o m / a p p l e s c r i p t / l i n k t r i g g e r / h  l m l l     ��������  ��  ��   m  n o n j    �� p�� 0 
pinodepath 
piNodePath p m    ����  o  q r q j    �� s�� 0 
piselnpath 
piSelnPath s m    ����  r  t u t j    �� v�� 0 
pifindtext 
piFindText v m    ����  u  w x w j    �� y�� 0 piline piLine y m    ����  x  z { z j    �� |�� 0 pistartoffset piStartOffset | m    ����  {  } ~ } j    �� �� 0 piendoffset piEndOffset  m    ����  ~  � � � l     ��������  ��  ��   �  � � � j    3�� ��� 0 plstkeys plstKeys � J    2 � �  � � � m    ! � � � � �  n o d e p a t h �  � � � m   ! $ � � � � �  s e l n p a t h �  � � � m   $ ' � � � � �  f i n d �  � � � m   ' * � � � � �  l i n e �  � � � m   * - � � � � �  s t a r t o f f s e t �  ��� � m   - 0 � � � � �  e n d o f f s e t��   �  � � � j   4 ;�� ��� 0 plngkeys plngKeys � n   4 : � � � 1   5 9��
�� 
leng � o   4 5���� 0 plstkeys plstKeys �  � � � l     ��������  ��  ��   �  � � � j   < @�� ��� 0 	pjsselect 	pjsSelect � m   < ? � � � � �� 
 
 f u n c t i o n ( e d i t o r ,   o p t i o n s )   { 
 	 f u n c t i o n   g e t V a l u e ( s t r S w i t c h )   { 
 	 	 r e t u r n   l s t S w i t c h e s [ l s t S w i t c h e s . i n d e x O f ( ' ? '   +   s t r S w i t c h   +   ' = ' ) + 1 ] ; 
 	 } 
 	 
 	 v a r 	 t r e e =   e d i t o r . t r e e ( ) , 
 	 	 o N o d e ,   r n g S e l n , 
 	 	 / / o p t i o n s . f i l e p a t h ,   o p t i o n s . s w i t c h e s ,   o p t i o n s . k e y s 
 	 	 l s t K e y s   =   o p t i o n s . k e y s , 
 	 	 s t r R e g e x   =   ' ( \ \ ? '   +   l s t K e y s . j o i n ( ' = | \ \ ? ' )   +   ' = ) ' , 
 	 	 o R e g e x   =   n e w   R e g E x p ( s t r R e g e x ,   ' g ' ) , 
 	 	 s t r P a t h   =   d e c o d e U R I C o m p o n e n t ( o p t i o n s . f i l e p a t h ) ,   
 	 	 s t r S w i t c h e s   =   d e c o d e U R I C o m p o n e n t ( o p t i o n s . s w i t c h e s ) , 
 	 	 l s t S w i t c h e s   =   s t r S w i t c h e s . s p l i t ( o R e g e x ) , 
 	 	 s t r P a t h ,   s t r L i n e N u m , 
 	 	 s t r S e l n P a t h , 
 	 	 s t r F i n d , 
 	 	 s t r S t a r t O f f s e t ,   s t r E n d O f f s e t , 
 	 	 l n g L i n e ,   l n g S t a r t O f f s e t = 0 ,   l n g E n d O f f s e t = - 1 , 
 	 	 v a r S t a r t O f f s e t ,   v a r E n d O f f s e t , 
 	 	 l s t M a t c h e s = [ ] ,   l s t R a n g e s = [ ] ,   i ; 
 	 	 
 	 
 	 / /   T r y   t o   r e s t o r e   a n y   s e l e c t i o n   t h a t   i s   s p e c i f i e d 
 	 i f   ( s t r P a t h   =   g e t V a l u e ( ' n o d e p a t h ' ) )   { 
 	 	 / / r e s t o r e   a n y   f i l t e r 
 	 	 e d i t o r . s e t N o d e P a t h ( s t r P a t h ) ; 
 	 } 
 	 	 
 	 
 	 s t r S e l n P a t h   =   g e t V a l u e ( ' s e l n p a t h ' ) ; 
 	 s t r F i n d   =   g e t V a l u e ( ' f i n d ' ) ; 
 	 
 	 i f   ( s t r S e l n P a t h   | |   s t r F i n d )   { 
 	 	 i f   ( s t r S e l n P a t h )   { 
 	 	 	 l s t M a t c h e s   =   t r e e . e v a l u a t e N o d e P a t h ( s t r S e l n P a t h ) ; 
 	 	 } 
 	 	 i f   ( s t r F i n d   & &   ( l s t M a t c h e s . l e n g t h   = =   0 ) )   { 
 	 	 	 l s t M a t c h e s   =   t r e e . e v a l u a t e N o d e P a t h ( ' / / " '   +   s t r F i n d   +   ' " ' ) ; 
 	 	 } 
 	 	 i f   ( l s t M a t c h e s . l e n g t h )   { 
 	 	 	 l s t M a t c h e s . f o r E a c h ( f u n c t i o n ( v a r N o d e )   { 
 	 	 	 	 l s t R a n g e s . p u s h ( t r e e . c r e a t e R a n g e F r o m N o d e s ( 
 	 	 	 	 	 v a r N o d e ,   0 ,   v a r N o d e ,   - 1 ) ) ; 
 	 	 	 	 / /   u n f o l d   i f   t h i s   r a n g e   i s   h i d d e n 
 	 	 	 	 i f   ( e d i t o r . n o d e I s H i d d e n I n F o l d ( v a r N o d e ) )   { 
 	 	 	 	 	 e d i t o r . e x p a n d T o R e v e a l N o d e ( v a r N o d e ) ; 
 	 	 	 	 } 
 	 	 	 } ) ; 
 	 	 	 e d i t o r . s e t S e l e c t e d R a n g e s ( l s t R a n g e s ) ; 
 	 	 	 / / M a k e   s u r e   t h a t   a t   l e a s t   t h e   f i r s t   o f   a n y   s e l e c t i o n s   i s   v i s i b l e 
 	 	 	 e d i t o r . s c r o l l R a n g e T o V i s i b l e ( l s t R a n g e s [ 0 ] ) ; 
 	 	 } 
 	 }   e l s e   { 
 	 	 
 	 	 / /   m a k e   a n y   s e l e c t i o n   s p e c i f i e d   b y   l i n e   n u m b e r   e t c 
 	 	 i f   ( s t r L i n e   =   g e t V a l u e ( ' l i n e ' ) )   { 
 	 	 	 l n g L i n e   =   p a r s e I n t ( s t r L i n e ,   1 0 ) ; 
 	 	 	 i f   ( ! ( i s N a N ( l n g L i n e ) ) )   { 
 	 	 	 	 o N o d e   =   t r e e . l i n e N u m b e r T o N o d e ( l n g L i n e ) ; 
 	 	 	 	 i f   ( e d i t o r . n o d e I s H i d d e n I n F o l d ( o N o d e ) )   { 
 	 	 	 	 	 e d i t o r . e x p a n d T o R e v e a l N o d e ( o N o d e ) ; 
 	 	 	 	 	 e d i t o r . s c r o l l T o L i n e ( l n g L i n e ) ; 
 	 	 	 	 } 
 	 	 
 	 	 	 	 i f   ( s t r S t a r t O f f s e t   =   g e t V a l u e ( ' s t a r t o f f s e t ' ) )   { 
 	 	 	 	 	 v a r S t a r t O f f s e t   =   p a r s e I n t ( s t r S t a r t O f f s e t ,   1 0 ) ; 
 	 	 	 	 	 i f   ( ! i s N a N ( v a r S t a r t O f f s e t ) )   { 
 	 	 	 	 	 	 l n g S t a r t O f f s e t   =   v a r S t a r t O f f s e t ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 
 	 	 	 	 i f   ( s t r E n d O f f s e t   =   g e t V a l u e ( ' e n d o f f s e t ' ) )   { 
 	 	 	 	 	 v a r E n d O f f s e t   =   p a r s e I n t ( s t r E n d O f f s e t ,   1 0 ) ; 
 	 	 	 	 	 i f   ( ! i s N a N ( v a r E n d O f f s e t ) )   { 
 	 	 	 	 	 	 l n g E n d O f f s e t   =   v a r E n d O f f s e t ; 
 	 	 	 	 	 } 
 	 	 	 	 } 
 
 	 	 	 	 r n g S e l n   =   t r e e . c r e a t e R a n g e F r o m N o d e s ( 
 	 	 	 	 	 o N o d e ,   l n g S t a r t O f f s e t ,   o N o d e ,   l n g E n d O f f s e t ) ; 
 	 	 	 	 e d i t o r . s e t S e l e c t e d R a n g e ( r n g S e l n ) ; 
 	 	 	 } 
 	 	 } 
 	 } 
 } 
 �  � � � l     ��������  ��  ��   �  � � � i   A D � � � I     �� ���
�� .GURLGURLnull��� ��� TEXT � o      ���� 0 strurl strURL��   � k     N � �  � � � r      � � � I     �� ����� "0 pathandswitches pathAndSwitches �  ��� � o    ���� 0 strurl strURL��  ��   � o      ���� 0 recparse recParse �  ��� � Z   	 N � ����� � >  	  � � � o   	 
���� 0 recparse recParse � m   
 ��
�� 
msng � k    J � �  � � � r     � � � I    �� ����� 0 	urldecode   �  ��� � n     � � � o    ���� 0 filepath   � o    ���� 0 recparse recParse��  ��   � o      ���� 0 strpath strPath �  � � � l   ��������  ��  ��   �  ��� � O    J � � � k    I � �  � � � r    % � � � l   # ����� � I   #�� ���
�� .aevtodocnull  �    alis � o    ���� 0 strpath strPath��  ��  ��   � o      ���� 0 odoc oDoc �  ��� � O   & I � � � k   * H � �  � � � r   * B � � � l  * @ ����� � I  * @���� �
�� .FTsuevjSnull���     docu��   � �� � �
�� 
FTjs � o   , 1���� 0 	pjsselect 	pjsSelect � �� ���
�� 
FTop � l  2 < ����� � b   2 < � � � o   2 3���� 0 recparse recParse � K   3 ; � � �� ����� 0 keys   � o   4 9���� 0 plstkeys plstKeys��  ��  ��  ��  ��  ��   � o      ���� 0 	varresult 	varResult �  ��� � I  C H������
�� .miscactvnull��� ��� null��  ��  ��   � o   & '���� 0 odoc oDoc��   � m     � ��                                                                                      @ alis    `  Macintosh HD               �9�SH+  P0FoldingText.app                                                �ƳϾm�        ����  	                Applications    �9�S      Ͼ_�    P0  *Macintosh HD:Applications: FoldingText.app     F o l d i n g T e x t . a p p    M a c i n t o s h   H D  Applications/FoldingText.app  / ��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  on getDoc(strPath)    � � � � $ o n   g e t D o c ( s t r P a t h ) �  � � � l     �� � ���   � % 	tell application "FoldingText"    � � � � > 	 t e l l   a p p l i c a t i o n   " F o l d i n g T e x t " �  � � � l     �� � ���   �  		set lstDoc to documents    � � � � 2 	 	 s e t   l s t D o c   t o   d o c u m e n t s �  � � � l     �� � ���   � " 		repeat with oDoc in lstDoc    � � � � 8 	 	 r e p e a t   w i t h   o D o c   i n   l s t D o c �  � � � l     �� � ���   � " 			set oFile to file of oDoc    � � � � 8 	 	 	 s e t   o F i l e   t o   f i l e   o f   o D o c �    l     ����   + %			if oFile is not missing value then    � J 	 	 	 i f   o F i l e   i s   n o t   m i s s i n g   v a l u e   t h e n  l     ����   > 8				if (POSIX path of ((oFile) as alias)) = strPath then    �		 p 	 	 	 	 i f   ( P O S I X   p a t h   o f   ( ( o F i l e )   a s   a l i a s ) )   =   s t r P a t h   t h e n 

 l     ����    					activate    �  	 	 	 	 	 a c t i v a t e  l     ����    					return oDoc    �   	 	 	 	 	 r e t u r n   o D o c  l     ����    
				end if    �  	 	 	 	 e n d   i f  l     ����    				end if    �  	 	 	 e n d   i f  l     �� !��     		end repeat   ! �""  	 	 e n d   r e p e a t #$# l     ��%&��  % " 		set oDoc to (open strPath)   & �'' 8 	 	 s e t   o D o c   t o   ( o p e n   s t r P a t h )$ ()( l     �*+�  *  
		activate   + �,,  	 	 a c t i v a t e) -.- l     �~/0�~  /  		return oDoc   0 �11  	 	 r e t u r n   o D o c. 232 l     �}45�}  4  		end tell   5 �66  	 e n d   t e l l3 787 l     �|9:�|  9  
end getDoc   : �;;  e n d   g e t D o c8 <=< l     �{�z�y�{  �z  �y  = >?> i   E H@A@ I      �xB�w�x "0 pathandswitches pathAndSwitchesB C�vC o      �u�u 0 strurl strURL�v  �w  A k     �DD EFE l     �tGH�t  G C = we can't simply split on '?' as there may be '?' in the text   H �II z   w e   c a n ' t   s i m p l y   s p l i t   o n   ' ? '   a s   t h e r e   m a y   b e   ' ? '   i n   t h e   t e x tF JKJ l     �sLM�s  L D > extracting the file in .js would require an active document,    M �NN |   e x t r a c t i n g   t h e   f i l e   i n   . j s   w o u l d   r e q u i r e   a n   a c t i v e   d o c u m e n t ,  K OPO l     �rQR�r  Q P J so we do it here to save the time and distraction caused by creating one    R �SS �   s o   w e   d o   i t   h e r e   t o   s a v e   t h e   t i m e   a n d   d i s t r a c t i o n   c a u s e d   b y   c r e a t i n g   o n e  P TUT r     VWV J     XX YZY n    [\[ 1    �q
�q 
txdl\  f     Z ]�p] m    ^^ �__  f t d o c : / /�p  W J      `` aba o      �o�o 0 dlm  b c�nc n     ded 1    �m
�m 
txdle  f    �n  U fgf r    hih n    jkj 2   �l
�l 
citmk o    �k�k 0 strurl strURLi o      �j�j 0 lstparts lstPartsg lml Z    �no�ipn A    #qrq n    !sts 1    !�h
�h 
lengt o    �g�g 0 lstparts lstPartsr m   ! "�f�f o r   & )uvu m   & '�e
�e 
msngv o      �d�d 0 varparse varParse�i  p k   , �ww xyx r   , 2z{z n   , 0|}| 4   - 0�c~
�c 
cobj~ m   . /�b�b } o   , -�a�a 0 lstparts lstParts{ o      �`�` 0 	strtarget 	strTargety � r   3 8��� n   3 6��� 1   4 6�_
�_ 
leng� o   3 4�^�^ 0 	strtarget 	strTarget� o      �]�] 0 
lngclosest 
lngClosest� ��� X   9 ���\�� k   M �� ��� r   M V��� l  M R��[�Z� b   M R��� b   M P��� m   M N�� ���  ?� o   N O�Y�Y 0 varkey varKey� m   P Q�� ���  =�[  �Z  � n     ��� 1   S U�X
�X 
txdl�  f   R S� ��� r   W \��� n   W Z��� 2  X Z�W
�W 
citm� o   W X�V�V 0 	strtarget 	strTarget� o      �U�U 0 lstparts lstParts� ��T� Z   ] ���S�R� ?   ] b��� n   ] `��� 1   ^ `�Q
�Q 
leng� o   ] ^�P�P 0 lstparts lstParts� m   ` a�O�O � k   e {�� ��� r   e m��� n   e k��� 1   i k�N
�N 
leng� n   e i��� 4   f i�M�
�M 
cobj� m   g h�L�L � o   e f�K�K 0 lstparts lstParts� o      �J�J 0 lngposn lngPosn� ��I� Z  n {���H�G� A   n q��� o   n o�F�F 0 lngposn lngPosn� o   o p�E�E 0 
lngclosest 
lngClosest� r   t w��� o   t u�D�D 0 lngposn lngPosn� o      �C�C 0 
lngclosest 
lngClosest�H  �G  �I  �S  �R  �T  �\ 0 varkey varKey� o   < A�B�B 0 plstkeys plstKeys� ��� r   � ���� n   � ���� 7  � ��A��
�A 
ctxt� m   � ��@�@ � o   � ��?�? 0 
lngclosest 
lngClosest� o   � ��>�> 0 	strtarget 	strTarget� o      �=�= 0 strpath strPath� ��� r   � ���� n   � ���� 7  � ��<��
�< 
ctxt� l  � ���;�:� [   � ���� o   � ��9�9 0 
lngclosest 
lngClosest� m   � ��8�8 �;  �:  � m   � ��7�7��� o   � ��6�6 0 	strtarget 	strTarget� o      �5�5 0 strswitches strSwitches� ��4� r   � ���� K   � ��� �3���3 0 filepath  � o   � ��2�2 0 strpath strPath� �1��0�1 0 switches  � o   � ��/�/ 0 strswitches strSwitches�0  � o      �.�. 0 varparse varParse�4  m ��� r   � ���� o   � ��-�- 0 dlm  � n     ��� 1   � ��,
�, 
txdl�  f   � �� ��+� L   � ��� o   � ��*�* 0 varparse varParse�+  ? ��� l     �)�(�'�)  �(  �'  � ��� l     �&���&  � D > based on http://harvey.nu/applescript_url_decode_routine.html   � ��� |   b a s e d   o n   h t t p : / / h a r v e y . n u / a p p l e s c r i p t _ u r l _ d e c o d e _ r o u t i n e . h t m l� ��� i   I L��� I      �%��$�% 0 	urldecode  � ��#� o      �"�" 0 thetext theText�#  �$  � k    �� ��� r     ��� m     �� ���  � o      �!�! 0 sdst sDst� ��� r    ��� m    �� ���   0 1 2 3 4 5 6 7 8 9 A B C D E F� o      � �  0 shex sHex� ��� r    ��� m    	�� � o      �� 0 i  � ��� V   ��� k   �� ��� r    ��� n       4    �
� 
cha  o    �� 0 i   o    �� 0 thetext theText� o      �� 0 c  �  Z    =     	
	 o    �� 0 c  
 m     �  + r   # ( b   # & o   # $�� 0 sdst sDst m   $ % �    o      �� 0 sdst sDst  =   + . o   + ,�� 0 c   m   , - �  % � k   1 �  Z   1 j�� ?   1 8  o   1 2�� 0 i    l  2 7!��! \   2 7"#" l  2 5$��$ n   2 5%&% 1   3 5�
� 
leng& o   2 3�� 0 thetext theText�  �  # m   5 6�� �  �   k   ; f'' ()( O   ; a*+* k   ? `,, -.- I  ? D�
�	�
�
 .miscactvnull��� ��� null�	  �  . /�/ I  E `�01
� .sysodlogaskr        TEXT0 l  E F2��2 m   E F33 �44 Z I n v a l i d   U R L   E n c o d e d   s t r i n g   -   m i s s i n g   h e x   c h a r�  �  1 �56
� 
btns5 J   G J77 8�8 m   G H99 �::  O K�  6 �;<
� 
dflt; m   K L== �>>  O K< � ?��
�  
appr? b   M Z@A@ b   M TBCB o   M R���� 0 ptitle pTitleC m   R SDD �EE      v e r .  A o   T Y���� 0 pver pVer��  �  + m   ; <FF�                                                                                  sevs  alis    �  Macintosh HD               �9�SH+  P/�System Events.app                                              S���A�I        ����  	                CoreServices    �9�S      �A�9    P/�P/�P/�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ) G��G L   b fHH m   b eII �JJ  ��  �  �   KLK r   k �MNM \   k �OPO l  k Q����Q I  k ����R
�� .sysooffslong    ��� null��  R ��ST
�� 
psofS l  o uU����U n   o uVWV 4   p u��X
�� 
cha X l  q tY����Y [   q tZ[Z o   q r���� 0 i  [ m   r s���� ��  ��  W o   o p���� 0 thetext theText��  ��  T ��\��
�� 
psin\ o   x y���� 0 shex sHex��  ��  ��  P m    ����� N o      ���� 0 icval1 iCVal1L ]^] r   � �_`_ \   � �aba l  � �c����c I  � �����d
�� .sysooffslong    ��� null��  d ��ef
�� 
psofe l  � �g����g n   � �hih 4   � ���j
�� 
cha j l  � �k����k [   � �lml o   � ����� 0 i  m m   � ����� ��  ��  i o   � ����� 0 thetext theText��  ��  f ��n��
�� 
psinn o   � ����� 0 shex sHex��  ��  ��  b m   � ����� ` o      ���� 0 icval2 iCVal2^ opo Z   � �qr����q G   � �sts =   � �uvu o   � ����� 0 icval1 iCVal1v m   � �������t =   � �wxw o   � ����� 0 icval2 iCVal2x m   � �������r k   � �yy z{z O   � �|}| k   � �~~ � I  � �������
�� .miscactvnull��� ��� null��  ��  � ���� I  � �����
�� .sysodlogaskr        TEXT� l  � ������� m   � ��� ��� r I n v a l i d   U R L   E n c o d e d   s t r i n g   -   n o t   2   h e x   c h a r s   a f t e r   %   s i g n��  ��  � ����
�� 
btns� J   � ��� ���� m   � ��� ���  O K��  � ����
�� 
dflt� m   � ��� ���  O K� �����
�� 
appr� b   � ���� b   � ���� o   � ����� 0 ptitle pTitle� m   � ��� ���      v e r .  � o   � ����� 0 pver pVer��  ��  } m   � ����                                                                                  sevs  alis    �  Macintosh HD               �9�SH+  P/�System Events.app                                              S���A�I        ����  	                CoreServices    �9�S      �A�9    P/�P/�P/�  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  { ���� L   � ��� m   � ��� ���  ��  ��  ��  p ��� r   � ���� b   � ���� o   � ����� 0 sdst sDst� l  � ������� I  � ������
�� .sysontocTEXT       shor� l  � ������� [   � ���� ]   � ���� o   � ����� 0 icval1 iCVal1� m   � ����� � o   � ����� 0 icval2 iCVal2��  ��  ��  ��  ��  � o      ���� 0 sdst sDst� ���� r   � ���� [   � ���� o   � ����� 0 i  � m   � ����� � o      ���� 0 i  ��  �   r   ���� b   � ��� o   � ����� 0 sdst sDst� o   � ����� 0 c  � o      ���� 0 sdst sDst ���� r  ��� [  ��� o  ���� 0 i  � m  ���� � o      ���� 0 i  ��  � B    ��� o    ���� 0 i  � n    ��� 1    ��
�� 
leng� o    ���� 0 thetext theText� ���� L  �� o  ���� 0 sdst sDst��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � \ V "ftdoc://encoded-file-path[?nodepath=//@due][?line=N][?startoffset=0][?endoffset=-1]"   � ��� �   " f t d o c : / / e n c o d e d - f i l e - p a t h [ ? n o d e p a t h = / / @ d u e ] [ ? l i n e = N ] [ ? s t a r t o f f s e t = 0 ] [ ? e n d o f f s e t = - 1 ] "� ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ���    ��������������� ������  � ���������������������������������� 0 ptitle pTitle�� 0 pver pVer�� 0 pauthor pAuthor�� 0 pdescription pDescription�� 0 
pinodepath 
piNodePath�� 0 
piselnpath 
piSelnPath�� 0 
pifindtext 
piFindText�� 0 piline piLine�� 0 pistartoffset piStartOffset�� 0 piendoffset piEndOffset�� 0 plstkeys plstKeys�� 0 plngkeys plngKeys�� 0 	pjsselect 	pjsSelect
�� .GURLGURLnull��� ��� TEXT�� "0 pathandswitches pathAndSwitches�� 0 	urldecode  �� �� �� �� �� �� � ����� �   � � � � � ��� � �� ���~���}
�� .GURLGURLnull��� ��� TEXT� 0 strurl strURL�~  � �|�{�z�y�x�| 0 strurl strURL�{ 0 recparse recParse�z 0 strpath strPath�y 0 odoc oDoc�x 0 	varresult 	varResult� �w�v�u�t ��s�r�q�p�o�n�m�w "0 pathandswitches pathAndSwitches
�v 
msng�u 0 filepath  �t 0 	urldecode  
�s .aevtodocnull  �    alis
�r 
FTjs
�q 
FTop�p 0 keys  �o 
�n .FTsuevjSnull���     docu
�m .miscactvnull��� ��� null�} O*�k+  E�O�� @*��,k+ E�O� -�j E�O�  *�b  ��b  
l%� 
E�O*j UUY h� �lA�k�j���i�l "0 pathandswitches pathAndSwitches�k �h��h �  �g�g 0 strurl strURL�j  � 
�f�e�d�c�b�a�`�_�^�]�f 0 strurl strURL�e 0 dlm  �d 0 lstparts lstParts�c 0 varparse varParse�b 0 	strtarget 	strTarget�a 0 
lngclosest 
lngClosest�` 0 varkey varKey�_ 0 lngposn lngPosn�^ 0 strpath strPath�] 0 strswitches strSwitches� �\^�[�Z�Y�X�W�V���U�T�S�R
�\ 
txdl
�[ 
cobj
�Z 
citm
�Y 
leng
�X 
msng
�W 
kocl
�V .corecnte****       ****
�U 
ctxt�T 0 filepath  �S 0 switches  �R �i �)�,�lvE[�k/E�Z[�l/)�,FZO��-E�O��,l �E�Y ���l/E�O��,E�O Jb  
[��l kh �%�%)�,FO��-E�O��,k ��k/�,E�O�� �E�Y hY h[OY��O�[�\[Zk\Z�2E�O�[�\[Z�k\Zi2E�O���E�O�)�,FO�� �Q��P�O���N�Q 0 	urldecode  �P �M��M �  �L�L 0 thetext theText�O  � �K�J�I�H�G�F�E�K 0 thetext theText�J 0 sdst sDst�I 0 shex sHex�H 0 i  �G 0 c  �F 0 icval1 iCVal1�E 0 icval2 iCVal2� ���D�CF�B3�A9�@=�?D�>�=I�<�;�:�9�8������7�6
�D 
leng
�C 
cha 
�B .miscactvnull��� ��� null
�A 
btns
�@ 
dflt
�? 
appr�> 
�= .sysodlogaskr        TEXT
�< 
psof
�; 
psin�: 
�9 .sysooffslong    ��� null
�8 
bool�7 
�6 .sysontocTEXT       shor�N�E�O�E�OkE�O h���,��/E�O��  
��%E�Y ٤�  Σ��,l 0� #*j O���kv���b   �%b  %a  UOa Y hO*a ��k/a �a  kE�O*a ��l/a �a  kE�O�i 
 	�i a & 8� +*j Oa �a kv�a �b   a %b  %a  UOa Y hO��a  �j %E�O�lE�Y ��%E�O�kE�[OY�O�ascr  ��ޭ