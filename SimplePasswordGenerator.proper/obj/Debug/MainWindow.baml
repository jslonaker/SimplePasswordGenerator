   M S B A M L   `   `   `  ����R  NSimplePasswordGenerator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:SimplePasswordGeneratorSimplePasswordGenerator  5   	   (    "SimplePasswordGenerator.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:SimplePasswordGenerator     5   	   -   5          � Title$  
MainWindow��5   	   $	��525��6   $��314.875��6)    � 
ResizeMode$ NoResize=�69    � AllowsTransparency .  � WindowStartupLocation$ CenterScreen=�6i    � WindowStyle$
 None=�5	   	    J� Opacity$	 0.8Q�6   
���   �.��5
      � 
���   � J� OpacityMask
 �����.+�5   
   �� -   5         ��Name$ button��5      $��Regenerate Hashes��6!   $
��Left=�6=   $��	24,85,0,0q�6X   $	��Top=�6k   $	��268��6�   
���   �
�������
�������$��46��6�   �� 5   
   -   5         ��Name$ tbNewPassword��5      $��Center=�6)   $��Center=�6M   $
��Left=�6o   $	��379��6�   $��
24,136,0,0q�6�   $	��Top=�6�   $	��268��6�   
���   ����	#FF0040FF
�������$��24(�6  �� 5   
   -   5        	 ��Name$	 tb_pwLength��5      $
��Left=�6'   $��24��6B   $��
235,20,0,0q�6N   
 �� TextWrapping$

 Wrap=�6b   $��10��6v   $	��Top=�6�   $��30��6�   
���   ����	#FF0040FF
�������6�   �� 5   
   -   5        $	 tb_nonAlpha��5      $
��Left=�6'   $��22��6B   $��
235,50,0,0q�6N   $

 Wrap=�6b   $��0��6v   $	��Top=�6   $��30��6�   
���   ����	#FF0040FF
�������6�   �� 5   
   -   5         ��Name$ label1��5      $��Desired Password Length��6    $
��Left=�6B   $��	81,16,0,0q�6]   $	��Top=�6p   $	��145��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   
�������z�5      V� 5      .~�5      �� �� 5      �� 5       �� Angle$ 0.126Q�6&   T� 5      5      5      �� 5   
   -   5        $
 lbl2��5      $!��# of Non AlhpaNumeric Chars��6   $
��Left=�6D   $��	59,46,0,0q�6_   $	��Top=�6r   $	��171��6�   
�������6�   �� 5   
   -   5         ��Name$ image��5      $
��Left=�6   $��26��6:   $��	739,1,0,0q�6F   $	��Top=�6Y   $��28��6q   $��x.png��6|   $ 0.5,0.5&�6�   z�5      V� 5      .~�5      �� �� 5      �� 5      $ 0.049Q�6&   T� 5       5!      5#      5%      5&      