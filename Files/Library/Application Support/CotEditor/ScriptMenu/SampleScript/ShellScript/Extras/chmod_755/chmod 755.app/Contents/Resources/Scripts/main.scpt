FasdUAS 1.101.10   ��   ��    k             l     ��  ��     
 main.scpt     � 	 	    m a i n . s c p t   
  
 l     ��  ��    . ( chmod 755.app v2.0 for CotEditor bundle     �   P   c h m o d   7 5 5 . a p p   v 2 . 0   f o r   C o t E d i t o r   b u n d l e      l     ��������  ��  ��        l      ��  ��   82
The MIT License (MIT)

Copyright (c) 2014 1024jp

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
     �  d 
 T h e   M I T   L i c e n s e   ( M I T ) 
 
 C o p y r i g h t   ( c )   2 0 1 4   1 0 2 4 j p 
 
 P e r m i s s i o n   i s   h e r e b y   g r a n t e d ,   f r e e   o f   c h a r g e ,   t o   a n y   p e r s o n   o b t a i n i n g   a   c o p y 
 o f   t h i s   s o f t w a r e   a n d   a s s o c i a t e d   d o c u m e n t a t i o n   f i l e s   ( t h e   " S o f t w a r e " ) ,   t o   d e a l 
 i n   t h e   S o f t w a r e   w i t h o u t   r e s t r i c t i o n ,   i n c l u d i n g   w i t h o u t   l i m i t a t i o n   t h e   r i g h t s 
 t o   u s e ,   c o p y ,   m o d i f y ,   m e r g e ,   p u b l i s h ,   d i s t r i b u t e ,   s u b l i c e n s e ,   a n d / o r   s e l l 
 c o p i e s   o f   t h e   S o f t w a r e ,   a n d   t o   p e r m i t   p e r s o n s   t o   w h o m   t h e   S o f t w a r e   i s 
 f u r n i s h e d   t o   d o   s o ,   s u b j e c t   t o   t h e   f o l l o w i n g   c o n d i t i o n s : 
 
 T h e   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   s h a l l   b e   i n c l u d e d   i n 
 a l l   c o p i e s   o r   s u b s t a n t i a l   p o r t i o n s   o f   t h e   S o f t w a r e . 
 
 T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S " ,   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D ,   E X P R E S S   O R 
 I M P L I E D ,   I N C L U D I N G   B U T   N O T   L I M I T E D   T O   T H E   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y , 
 F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A N D   N O N I N F R I N G E M E N T .   I N   N O   E V E N T   S H A L L   T H E 
 A U T H O R S   O R   C O P Y R I G H T   H O L D E R S   B E   L I A B L E   F O R   A N Y   C L A I M ,   D A M A G E S   O R   O T H E R 
 L I A B I L I T Y ,   W H E T H E R   I N   A N   A C T I O N   O F   C O N T R A C T ,   T O R T   O R   O T H E R W I S E ,   A R I S I N G   F R O M , 
 O U T   O F   O R   I N   C O N N E C T I O N   W I T H   T H E   S O F T W A R E   O R   T H E   U S E   O R   O T H E R   D E A L I N G S   I N 
 T H E   S O F T W A R E . 
      l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    K E __settings__________________________________________________________     �   �   _ _ s e t t i n g s _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _       l     ��������  ��  ��      ! " ! j     �� #�� 0 
permission   # m      $ $ � % %  7 5 5 "  & ' & l     ��������  ��  ��   '  ( ) ( l     ��������  ��  ��   )  * + * l     �� , -��   , I C __main____________________________________________________________    - � . . �   _ _ m a i n _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ +  / 0 / l     ��������  ��  ��   0  1 2 1 i     3 4 3 I     ������
�� .aevtoappnull  �   � ****��  ��   4 k      5 5  6 7 6 r      8 9 8 I    	���� :
�� .sysostdfalis    ��� null��   : �� ; <
�� 
ftyp ; m     = = � > >  p u b l i c . t e x t < �� ?��
�� 
mlsl ? m    ��
�� boovtrue��   9 o      ���� 0 choosenitems choosenItems 7  @ A @ l   ��������  ��  ��   A  B�� B I    �� C���� 0 processitems processItems C  D�� D o    ���� 0 choosenitems choosenItems��  ��  ��   2  E F E l     ��������  ��  ��   F  G H G l     ��������  ��  ��   H  I J I i    
 K L K I     �� M��
�� .aevtodocnull  �    alis M o      ���� 0 	dropitems 	dropItems��   L I     �� N���� 0 processitems processItems N  O�� O o    ���� 0 	dropitems 	dropItems��  ��   J  P Q P l     ��������  ��  ��   Q  R S R l     ��������  ��  ��   S  T U T i     V W V I      �� X���� 0 processitems processItems X  Y�� Y o      ���� 0 theitems theItems��  ��   W k     @ Z Z  [ \ [ X     : ]�� ^ ] k    5 _ _  ` a ` Z   ! b c���� b >    d e d n     f g f 1    ��
�� 
utid g l    h���� h I   �� i��
�� .sysonfo4asfe        file i o    ���� 0 thefile theFile��  ��  ��   e m     j j � k k  p u b l i c . t e x t c  S    ��  ��   a  l m l l  " "��������  ��  ��   m  n�� n I  " 5�� o��
�� .sysoexecTEXT���     TEXT o b   " 1 p q p b   " + r s r b   " ) t u t m   " # v v � w w  c h m o d   u o   # (���� 0 
permission   s m   ) * x x � y y    q l  + 0 z���� z n   + 0 { | { 1   . 0��
�� 
strq | n   + . } ~ } 1   , .��
�� 
psxp ~ o   + ,���� 0 thefile theFile��  ��  ��  ��  �� 0 thefile theFile ^ o    ���� 0 theitems theItems \  ��  I  ; @������
�� .sysobeepnull��� ��� long��  ��  ��   U  ��� � l     ��������  ��  ��  ��       �� � $ � � ���   � ���������� 0 
permission  
�� .aevtoappnull  �   � ****
�� .aevtodocnull  �    alis�� 0 processitems processItems � �� 4���� � ���
�� .aevtoappnull  �   � ****��  ��   �   � �� =����������
�� 
ftyp
�� 
mlsl�� 
�� .sysostdfalis    ��� null�� 0 choosenitems choosenItems�� 0 processitems processItems�� *���e� E�O*�k+  � �� L���� � ���
�� .aevtodocnull  �    alis�� 0 	dropitems 	dropItems��   � ���� 0 	dropitems 	dropItems � ���� 0 processitems processItems�� *�k+   � �� W���� � ����� 0 processitems processItems�� �� ���  �  ���� 0 theitems theItems��   � ������ 0 theitems theItems�� 0 thefile theFile � ��~�}�|�{ j v x�z�y�x�w
� 
kocl
�~ 
cobj
�} .corecnte****       ****
�| .sysonfo4asfe        file
�{ 
utid
�z 
psxp
�y 
strq
�x .sysoexecTEXT���     TEXT
�w .sysobeepnull��� ��� long�� A 9�[��l kh �j �,� Y hO�b   %�%��,�,%j 
[OY��O*j  ascr  ��ޭ