FasdUAS 1.101.10   ��   ��    k             j     �� �� 0 ptitle pTitle  m        � 	 	 6 M o v e   l i n e ( s )   t o   n e w   s e c t i o n   
  
 j    �� �� 0 pver pVer  m       �    0 . 0 3      j    �� �� 0 pauthor pAuthor  m       �    R o b T r e w      j   	 �� �� 0 plicense pLicense  m   	 
   �   � M I T :   A L L   c o p i e s   s h o u l d   i n c l u d e   t h e   l i c e n s e   n o t i c e   a t   h t t p s : / / g i t h u b . c o m / R o b T r e w / t x t q u e r y - t o o l s      l     ��������  ��  ��        j    �� �� 0 puse pUse  m       �   � 
 
 	 1 .   S e l e c t   o n e   o r   m o r e   l i n e s   i n   F o l d i n g T e x t 
 	 2 .   R u n   t h i s   s c r i p t   a n d   c h o o s e   a   t a r g e t   s e c t i o n   f r o m   t h e   m e n u 
     !   l     �� " #��   " - ' JSLR option for additional leading tab    # � $ $ N   J S L R   o p t i o n   f o r   a d d i t i o n a l   l e a d i n g   t a b !  % & % j    �� '�� *0 pblntaskpaperindent pblnTaskPaperIndent ' m    ��
�� boovfals &  ( ) ( l     ��������  ��  ��   )  * + * j    �� ,�� 0 pstrmoveseln pstrMoveSeln , m     - - � . .	� 
 	 f u n c t i o n ( e d i t o r ,   o p t i o n s )   { 
 
 	 	 / /   F I N D   T H E   T A R G E T   S E C T I O N 
 	 	 v a r   o T r e e = e d i t o r . t r e e ( ) , 
 	 	 	 o N e w P a r e n t = o T r e e . e v a l u a t e N o d e P a t h ( o p t i o n s . t a r g e t p a t h   +   ' [ 0 ] ' ) [ 0 ] , 
 	 	 	 r n g S e l n   =   e d i t o r . s e l e c t e d R a n g e ( ) , 
 	 	 	 l s t N o d e s   =   r n g S e l n . n o d e s I n R a n g e ( ) ,   
 	 	 	 l s t S e e n = [ ] ,   l s t S e l n R o o t s = [ ] ,   s t r I D , 
 	 	 	 
 	 	 	 / /   e d i t   ( 1   o f   2 )   f o r   J S L R   ( u s i n g   T a s k P a p e r   f o r m a t   i n   F T ) 
 	 	 	 b l n E x t r a I n d e n t   =   o p t i o n s . t a s k p a p e r i n d e n t ; 
 	 	 
 	 	 / /   W O R K   O N L Y   W I T H   T H E   H I G H E S T   L E V E L   N O D E S   I N   T H E   S E L E C T I O N 
 	 	 / /   ( C H I L D R E N   T R A V E L   W I T H   T H E M ) 
 	 	 l s t N o d e s . f o r E a c h ( f u n c t i o n   ( o N o d e )   { 
 	 	 	 s t r I D = o N o d e . p a r e n t . i d ; 
 	 	 	 i f   ( l s t S e e n . i n d e x O f ( s t r I D )   = =   - 1 )   { 
 	 	 	 	 l s t S e l n R o o t s . p u s h ( o N o d e ) ; 
 	 	 	 	 l s t S e e n . p u s h ( o N o d e . i d ) ; 
 	 	 	 } 
 	 	 } ) ; 
 
 	 	 / /   A P P E N D   E A C H   S E L E C T E D   P A R E N T   N O D E   T O   T H E   C H O S E N   T A R G E T   N O D E 
 	 	 / /   T a k i n g   c h i l d r e n   w i t h   e a c h   p a r e n t ,   u n l e s s   w e   a r e   r e l o c a t i n g   a n   a n c e s t o r   u n d e r   o n e 
 	 	 / /   o f   i t s   o w n   d e s c e n d a n t s   ( d e m o t e d   a n c e s t o r s   t r a v e l   a l o n e ) 
 
 	 	 l s t S e l n R o o t s . f o r E a c h ( f u n c t i o n   ( o N o d e )   { 
 	 	 	 i f   ( o N e w P a r e n t . i s A n c e s t o r O f S e l f ( o N o d e ) )   {   / / d e t a c h   t r a v e l l e r   f r o m   i t s   d e s c e n d a n t s   b e f o r e   m o v i n g   i t 
 	 	 	 	 o T r e e . r e m o v e N o d e ( o N o d e ) ; 
 	 	 	 } 
 	 	 	 o N e w P a r e n t . a p p e n d C h i l d ( o N o d e ) ;   / /   b y   d e f a u l t   c h i l d r e n   t r a v e l   w i t h   p a r e n t s 
 	 	 	 
 	 	 	 / /   e d i t   ( 2   o f   2 )   f o r   J S L R   ( u s i n g   T a s k P a p e r   f o r m a t   i n   F T ) 
 	 	 	 i f   ( b l n E x t r a I n d e n t )   { o N o d e . s e t L i n e ( ' \ t '   +   o N o d e . l i n e ( ) ) } 
 	 	 } ) ; 
 	 } 
 +  / 0 / l     ��������  ��  ��   0  1 2 1 j    �� 3�� "0 pstrheadinglist pstrHeadingList 3 m     4 4 � 5 5� 
 
 	 / /   G A T H E R   L I S T   O F   S E C T I O N S   F O R   T H E   U I   M E N U 
 	 f u n c t i o n ( e d i t o r )   { 
 	 	 v a r     l i b N o d e P a t h   =   r e q u i r e ( ' f t / c o r e / n o d e p a t h ' ) . N o d e P a t h , 
 	 	 	 o T r e e   =   e d i t o r . t r e e ( ) , 
 	 	 	 l s t H e a d s   =   o T r e e . e v a l u a t e N o d e P a t h ( ' / / @ t y p e = h e a d i n g ' ) , 
 	 	 	 l s t M e n u   =   [ ] ,   l s t P a t h = [ ] ,   l s t S e l n N o d e s = e d i t o r . s e l e c t e d R a n g e ( ) . n o d e s I n R a n g e ( ) , 
 	 	 	 l n g S e l n = l s t S e l n N o d e s . l e n g t h , 
 	 	 	 r n g L i n e s ,   s t r T e x t = ' ' ; 
 
 	 	 	 i f   ( l n g S e l n )   { 
 	 	 	 	 r n g L i n e s   =   o T r e e . c r e a t e R a n g e F r o m N o d e s ( l s t S e l n N o d e s [ 0 ] , 0 , l s t S e l n N o d e s [ l n g S e l n - 1 ] , - 1 ) ; 
 	 	 	 	 s t r T e x t   =   r n g L i n e s . t e x t I n R a n g e ( ) ; 
 	 	 	 } 
 	 
 	 	 	 l s t H e a d s . f o r E a c h ( f u n c t i o n ( o H e a d )   { 
 	 	 	 	 l s t P a t h . p u s h ( l i b N o d e P a t h . c a l c u l a t e M i n N o d e P a t h ( o H e a d ) ) ; 
 	 	 	 	 l s t M e n u . p u s h ( 
 	 	 	 	 	 [ 
 	 	 	 	 	 	 A r r a y ( o H e a d . t y p e I n d e n t L e v e l ( ) + 1 ) . j o i n ( ' # ' ) , 
 	 	 	 	 	 	 o H e a d . t e x t ( ) 
 	 	 	 	 	 ] . j o i n ( '   ' ) 
 	 	 	 	 ) ; 
 	 	 	 } ) ; 
 	 
 	 	 	 r e t u r n   [ l s t M e n u ,   l s t P a t h ,   s t r T e x t ] ; 
 	 } 
 2  6 7 6 l     ��������  ��  ��   7  8 9 8 i     : ; : I     ������
�� .aevtoappnull  �   � ****��  ��   ; O    v < = < k   u > >  ? @ ? r    	 A B A 2   ��
�� 
docu B o      ���� 0 lstdocs lstDocs @  C�� C Z   
u D E���� D >   
  F G F o   
 ���� 0 lstdocs lstDocs G J    ����   E O   q H I H k   p J J  K L K l   ��������  ��  ��   L  M N M l   �� O P��   O 9 3 GET LIST OF HEADING TITLES AND THEIR MINIMUM PATHS    P � Q Q f   G E T   L I S T   O F   H E A D I N G   T I T L E S   A N D   T H E I R   M I N I M U M   P A T H S N  R S R r    % T U T l   # V���� V I   #���� W
�� .FTsuevjSnull���     docu��   W �� X��
�� 
FTjs X o    ���� "0 pstrheadinglist pstrHeadingList��  ��  ��   U o      ���� "0 lstheadsandseln lstHeadsAndSeln S  Y Z Y r   & = [ \ [ o   & '���� "0 lstheadsandseln lstHeadsAndSeln \ J       ] ]  ^ _ ^ o      ���� 0 lsttitle lstTitle _  ` a ` o      ���� 0 lstpath lstPath a  b�� b o      ���� 0 strseln strSeln��   Z  c�� c Z   >p d e���� d F   > J f g f >   > B h i h o   > ?���� 0 lsttitle lstTitle i J   ? A����   g >   E H j k j o   E F���� 0 strseln strSeln k m   F G l l � m m   e k   Ml n n  o p o l  M M��������  ��  ��   p  q r q l  M M�� s t��   s #   GET NUMBERED LIST OF TITLES    t � u u :     G E T   N U M B E R E D   L I S T   O F   T I T L E S r  v w v r   M R x y x n   M P z { z 1   N P��
�� 
leng { o   M N���� 0 lsttitle lstTitle y o      ���� 0 lnghead lngHead w  | } | r   S Z ~  ~ n   S X � � � 1   V X��
�� 
leng � l  S V ����� � c   S V � � � o   S T���� 0 lnghead lngHead � m   T U��
�� 
TEXT��  ��    o      ���� 0 	lngdigits 	lngDigits }  � � � Y   [  ��� � ��� � r   e z � � � l  e u ����� � b   e u � � � b   e p � � � n  e l � � � I   f l�� ����� 0 padnum PadNum �  � � � o   f g���� 0 i   �  ��� � o   g h���� 0 	lngdigits 	lngDigits��  ��   �  f   e f � 1   l o��
�� 
tab  � n   p t � � � 4   q t�� �
�� 
cobj � o   r s���� 0 i   � o   p q���� 0 lsttitle lstTitle��  ��   � n       � � � 4   v y�� �
�� 
cobj � o   w x���� 0 i   � o   u v���� 0 lsttitle lstTitle�� 0 i   � m   ^ _����  � o   _ `���� 0 lnghead lngHead��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �    GET USER CHOICE    � � � � "     G E T   U S E R   C H O I C E �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  � � � r   � � � � � I  � ��� � �
�� .gtqpchltns    @   @ ns   � o   � ����� 0 lsttitle lstTitle � �� � �
�� 
appr � b   � � � � � b   � � � � � o   � ����� 0 ptitle pTitle � 1   � ���
�� 
tab  � o   � ����� 0 pver pVer � �� � �
�� 
prmp � b   � � � � � b   � � � � � b   � � � � � b   � � � � � l 	 � � ����� � m   � � � � � � � R C h o o s e   n e w   s e c t i o n   f o r   s e l e c t e d   l i n e ( s ) :  ��  ��   � 1   � ���
�� 
lnfd � 1   � ���
�� 
lnfd � o   � ����� 0 strseln strSeln � 1   � ���
�� 
lnfd � �� � �
�� 
inSL � l 
 � � ����� � J   � � � �  ��� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 lsttitle lstTitle��  ��  ��   � �� � �
�� 
okbt � m   � � � � � � �  O K � �� � �
�� 
cnbt � m   � � � � � � �  C a n c e l � �� � �
�� 
empL � m   � ���
�� boovtrue � �� ���
�� 
mlsl � m   � ���
�� boovfals��   � o      ���� 0 	varchoice 	varChoice �  � � � Z  � � � ����� � =   � � � � � o   � ����� 0 	varchoice 	varChoice � m   � ���
�� boovfals � L   � � � � m   � ���
�� 
msng��  ��   �  � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � m   � ���  � o   � ��~�~ 0 	varchoice 	varChoice � o      �}�} 0 	varchoice 	varChoice �  � � � l  � ��|�{�z�|  �{  �z   �  � � � l  � ��y � ��y   �     GET INDEX OF USER CHOICE    � � � � 4     G E T   I N D E X   O F   U S E R   C H O I C E �  � � � r   � � � � J   � � � �  � � � n  � � � � � 1   � ��x
�x 
txdl �  f   � � �  ��w � 1   � ��v
�v 
tab �w   � J       � �  � � � o      �u�u 0 dlm   �  ��t � n      � � � 1  
�s
�s 
txdl �  f  	
�t   �  � � � r   � � � n   � � � 4  �r �
�r 
citm � m  �q�q  � o  �p�p 0 	varchoice 	varChoice � o      �o�o 0 ichoice iChoice �  � � � r  '   o  !�n�n 0 dlm   n      1  "&�m
�m 
txdl  f  !" �  l ((�l�k�j�l  �k  �j    l ((�i	�i   8 2  GET TITLE AND MINIMUM NODEPATH OF CHOSEN SECTION   	 �

 d     G E T   T I T L E   A N D   M I N I M U M   N O D E P A T H   O F   C H O S E N   S E C T I O N  r  (I J  (6  n  (. 4  ).�h
�h 
cobj o  *-�g�g 0 ichoice iChoice o  ()�f�f 0 lsttitle lstTitle �e n  .4 4  /4�d
�d 
cobj o  03�c�c 0 ichoice iChoice o  ./�b�b 0 lstpath lstPath�e   J        o      �a�a 0 strtitle strTitle �` o      �_�_ 0 strpath strPath�`    l JJ�^�]�\�^  �]  �\     l JJ�[!"�[  ! , & MOVE SELECTED LINES TO CHOSEN SECTION   " �## L   M O V E   S E L E C T E D   L I N E S   T O   C H O S E N   S E C T I O N  $%$ l JJ�Z&'�Z  & ] W JSLR edit (added taskpaperindent:pblnTaskPaperIndent option for additional leading tab   ' �(( �   J S L R   e d i t   ( a d d e d   t a s k p a p e r i n d e n t : p b l n T a s k P a p e r I n d e n t   o p t i o n   f o r   a d d i t i o n a l   l e a d i n g   t a b% )�Y) I Jl�X�W*
�X .FTsuevjSnull���     docu�W  * �V+,
�V 
FTjs+ o  LQ�U�U 0 pstrmoveseln pstrMoveSeln, �T-�S
�T 
FTop- K  Tf.. �R/0�R 0 
targetpath  / o  WZ�Q�Q 0 strpath strPath0 �P1�O�P 0 taskpaperindent  1 o  ]b�N�N *0 pblntaskpaperindent pblnTaskPaperIndent�O  �S  �Y  ��  ��  ��   I n    232 4    �M4
�M 
cobj4 m    �L�L 3 o    �K�K 0 lstdocs lstDocs��  ��  ��   = m     55�                                                                                      @ alis    `  Macintosh HD               Љ�JH+     �FoldingText.app                                                 1����>�        ����  	                Applications    Љ�J      ��0�       �  *Macintosh HD:Applications: FoldingText.app     F o l d i n g T e x t . a p p    M a c i n t o s h   H D  Applications/FoldingText.app  / ��   9 676 l     �J�I�H�J  �I  �H  7 898 i    :;: I      �G<�F�G 0 padnum PadNum< =>= o      �E�E 0 lngnum lngNum> ?�D? o      �C�C 0 	lngdigits 	lngDigits�D  �F  ; k     )@@ ABA r     CDC c     EFE o     �B�B 0 lngnum lngNumF m    �A
�A 
TEXTD o      �@�@ 0 strnum strNumB GHG r    IJI l   K�?�>K \    LML o    �=�= 0 	lngdigits 	lngDigitsM l   
N�<�;N n    
OPO 1    
�:
�: 
lengP o    �9�9 0 strnum strNum�<  �;  �?  �>  J o      �8�8 0 lnggap lngGapH QRQ V    &STS k    !UU VWV r    XYX b    Z[Z m    \\ �]]  0[ o    �7�7 0 strnum strNumY o      �6�6 0 strnum strNumW ^�5^ r    !_`_ \    aba o    �4�4 0 lnggap lngGapb m    �3�3 ` o      �2�2 0 lnggap lngGap�5  T ?    cdc o    �1�1 0 lnggap lngGapd m    �0�0  R e�/e L   ' )ff o   ' (�.�. 0 strnum strNum�/  9 g�-g l     �,�+�*�,  �+  �*  �-       �)h     �( - 4ij�)  h 
�'�&�%�$�#�"�!� ���' 0 ptitle pTitle�& 0 pver pVer�% 0 pauthor pAuthor�$ 0 plicense pLicense�# 0 puse pUse�" *0 pblntaskpaperindent pblnTaskPaperIndent�! 0 pstrmoveseln pstrMoveSeln�  "0 pstrheadinglist pstrHeadingList
� .aevtoappnull  �   � ****� 0 padnum PadNum
�( boovfalsi � ;��kl�
� .aevtoappnull  �   � ****�  �  k �� 0 i  l ,5��������� l������
�	��� ���� �� ��� ����������������������������
� 
docu� 0 lstdocs lstDocs
� 
cobj
� 
FTjs
� .FTsuevjSnull���     docu� "0 lstheadsandseln lstHeadsAndSeln� 0 lsttitle lstTitle� 0 lstpath lstPath� 0 strseln strSeln
� 
bool
� 
leng� 0 lnghead lngHead
� 
TEXT� 0 	lngdigits 	lngDigits�
 0 padnum PadNum
�	 
tab 
� .miscactvnull��� ��� null
� 
appr
� 
prmp
� 
lnfd
� 
inSL
� 
okbt
� 
cnbt
� 
empL
�  
mlsl�� 
�� .gtqpchltns    @   @ ns  �� 0 	varchoice 	varChoice
�� 
msng
�� 
txdl�� 0 dlm  
�� 
citm�� 0 ichoice iChoice�� 0 strtitle strTitle�� 0 strpath strPath
�� 
FTop�� 0 
targetpath  �� 0 taskpaperindent  �� �w�s*�-E�O�jve��k/Z*�b  l E�O�E[�k/E�Z[�l/E�Z[�m/E�ZO�jv	 ���&$��,E�O��&�,E�O #k�kh  )��l+ _ %��/%��/F[OY��O*j O�a b   _ %b  %a a _ %_ %�%_ %a ��k/kva a a a a ea fa  E`  O_  f  	a !Y hO_  �k/E`  O)a ",_ lvE[�k/E` #Z[�l/)a ",FZO_  a $k/E` %O_ #)a ",FO��_ %/��_ %/lvE[�k/E` &Z[�l/E` 'ZO*�b  a (a )_ 'a *b  a +a + Y hUY hUj ��;����mn���� 0 padnum PadNum�� ��o�� o  ������ 0 lngnum lngNum�� 0 	lngdigits 	lngDigits��  m ���������� 0 lngnum lngNum�� 0 	lngdigits 	lngDigits�� 0 strnum strNum�� 0 lnggap lngGapn ����\
�� 
TEXT
�� 
leng�� *��&E�O���,E�O h�j�%E�O�kE�[OY��O� ascr  ��ޭ