   M S B A M L   `   `   `  ���� R  NSimplePasswordGenerator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:SimplePasswordGeneratorSimplePasswordGenerator  (    "SimplePasswordGenerator.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     7local%clr-namespace:SimplePasswordGenerator     -     � Title$  
MainWindow��$	��420��$��359.938�� � 
ResizeMode$ NoResize=� � AllowsTransparency .  � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=� J� Opacity$	 0.8Q�
���   �.��� 
���   � J� OpacityMask
 �����.+��� -    ��Name$ button��$��Regenerate Hashes��$
��Left=�$��	47,81,0,0q�$	��Top=�$	��268��
���   �
�������
�������$��35���� -    ��Name$ tbNewPassword��$��Center=�$��Center=�$
��Left=�$	��274��$��
10,136,0,0q�$	��Top=�$	��340��
���   ����	#FF0040FF
�������$��16(�	 � ContextMenu	 �� .@�m� -   
 m�Name$
 ContextMenuCopy��$��0q�
���   �
���   �
�������$��Center=�$��Center=�$
��Copy�� J� IsManipulationEnabled . m� -   $
 ContextMenuUseItem��$��0q�
���   �
���   �
�������$��Center=�$��Center=�$/��)Use Password (copy to clipboard +delete )�� . �� -    ��Name$ tb_pwLength��$
��Left=�$��24��$��
235,20,0,0q� �� TextWrapping$
 Wrap=�$��32��$	��Top=�$��30��
���   ����	#FF0040FF
��������� -   $ tb_nonAlpha��$
��Left=�$��22��$��
235,50,0,0q�$
 Wrap=�$��0��$	��Top=�$��30��
���   ����	#FF0040FF
��������� -    ��Name$ label1��$��Desired Password Length��$
��Left=�$��	81,16,0,0q�$	��Top=�$	��145�� J� RenderTransformOrigin$ 0.5,0.5&�
�������z�V� .~��� �� ��  �� Angle$ 0.126Q�T� �� -	   $
 lbl2��$!��# of Non AlhpaNumeric Chars��$
��Left=�$��	59,46,0,0q�$	��Top=�$	��171��
��������� -
    ��Name$ image��$
��Left=�$��26��$��	739,1,0,0q�$	��Top=�$��28��$��x.png��$ 0.5,0.5&�z�V� .~��� �� �� $ 0.049Q�T� 