   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   U QInteractiveDataDisplay.WPF, Version=0.0.0.0, Culture=neutral, PublicKeyToken=nullkLclr-namespace:InteractiveDataDisplay.WPF;assembly=InteractiveDataDisplay.WPFInteractiveDataDisplay.WPF 5   	   F Bticket_cask, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:ticket_caskticket_cask 5   	      ticket_cask.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	   [d3Lclr-namespace:InteractiveDataDisplay.WPF;assembly=InteractiveDataDisplay.WPF     5   	   +localclr-namespace:ticket_cask     5   	     � Title$  Ticket Cask��5
   	   $
��1080��6   $
��1920��6+   .��5      � ��5   
   �� 5       �� ImageSource$W QC:\Users\sw.rwilliams\source\repos\ticket_cask\ticket_cask\refs\maxresdefault.jpg��6    j� Stretch$ UniformToFill=�6y   .+�5   
   �� -   5        $��tcHead��5      $��10q�6#   
�����p���5      �� 5       �� Opacity$ .5Q�6"    �� Color$ White��6/    � 	Resources 5       �� 
TargetType �� Property �� Value	 �� 
TargetType
 �� CornerRadius ��Name �� Triggers P� Property P� Value �� 
TargetName��%J  '��       �� 5      " ��6   .�5      ��  � �� 5      �� 5      "	 ��6.   .R�5   "   �� $��Border��6)   $��1,1,1,0q�67   
�������$
 4,4,0,0��6i   $	��2,0q�6�   ._�5   &   �� $ ContentSite��67   $��Center=�5   )   $��Center=�5   )   $��Header��5   )   $
��10,2q�5   )   5   #    5   "   P� 5    &    �@��
IsSelected . . �5!   *   �� $ Border��61    � ��
 ��·�6[   5"   '   P� 5#   &    �@��
IsSelected .  . �5$   *   �� $ Border��61    � ��
 �����6[   5%   '   5'      5)      5*      5+      .@�5,      �� -   5        $��	tiReports��5,      $��Reports��6'   .��5-      � -   5        $��gReport��5-      .+�5.      �� -   5        $��rPanels��5.   !    �� Orientation$ 
Horizontal=�60   $��25q�6I   .+�5/      �� -   5        $��
rLeftPanel��5/   %   .+�50      �� -   5        $��cbReport��50   '   $��25��67   $	��450��6C   $
��Left=�6O   $��Center=�6j    J� 	AllowDrop . .@�51   "   �� -   5        $��rcbiEmployeeStats��51   /   $��Employee Stats��6H   �� 52   "   -   5        $��rcbiTicketAge��52   /   $��Ticket Age and Velocity��6D   53      �� 54      $ 
Horizontal=�6)   .+�55   "   �� -	   5        $
��rdpl��55   (   $��Report Start Date:     ��64   (  "System.Windows.Controls.DatePicker  56   "   -
   5        $��rDatepicker��56   -   
 �� Now   SelectedDate# Z 6A   $	��200��6l   57      �� 58      $ 
Horizontal=�6)   $��5q�6B   .+�59   "   �� -   5        $��
rbtnSelect��59   )   $	��225��6;   $��25��6G   .��6l   Select6t   �� 5:   "   -   5        $��	rbtnClear��5:   )   $	��225��6;   $��25��6G   .��6k   Clear6r   5;      5<      �� 5=      -   5        $��rRightPanel��5=   %   $��15,0,0,0q�68   .+�5>      &   InteractiveDataDisplay.WPF.Chart  -   5        $��	rBarGraph��5>   '   $
��1350��69   $	��500��6F   $��0,0,0,15q�6S      Title 5?   "   �� 5@   &   $��Center=�60   $��18(�6M   $��0,5,0,5q�6[   Ticket Age Graph6~      BottomTitle 5B   "   �� 5C   &   $��Center=�60   $��18(�6M   $��0,5,0,5q�6[   Ticket Age in Days6�      	LeftTitle 5E   "   �� 5F   &   $��Center=�60   $��18(�6M   $��0,5,0,5q�6[   Number of tickets open6�      LegendContent$ Y = Ticket Count��5H   b   .��5J   "   )  #InteractiveDataDisplay.WPF.BarGraph  -   5        $��rbgGraph��5J   .      Color$
 Blue��6>   5K      &   System.Windows.Controls.DataGrid  5L      -   5        $��rGrid��5L   '   $
��1350��64   $��13(�6A      AlternatingRowBackground
 ����� �� AlternationCount$ 2��6t   ��6�   �� �� 5M      -   5        $��rsGridButtons��5M   )   $ 
Horizontal=�6>   $��Right=�6W   $��Bottom=�6s   .+�5N   "   �� -   5        $��
rPrintButt��5N   )   $	��200��6;   $��30��6G   $��Print��6S   $y�Hidden=�6|   �� 5O   "   -   5        $��rExportButt��5O   )   $	��200��6<   $��30��6H   $��Export��6T   6e   5P      5Q      5R      5S      5T      �� 5U      -   5        $��tiDashBoard��5U      $��	Dashboard��6)   .��5V      � -   5        $��gDash��5V      .+�5W        -   5          Name$ dEmpGrid��5W      $
��Left=�61   $	��465��6L   $��
10,525,0,0q�6Y   $	��Top=�6m   $	��460��6�     5X      -   5        $ dTicketGrid��5X      "   VerticalScrollBarVisibility$
 Auto=�64   $
��Left=�6W   $	��465��6r   $	��Top=�6   $
��1387��6�   $��489,525,0,0q�6�   �� 5Y      -   5         ��Name$ stack��5Y   :   $ 
Horizontal=�6!   $��
10,-50,0,0q�6I   $��50��6^    5Z      #  ticket_cask.NegatingConverter   NegatingConverter 	 slide W� From g� Duration  �� TargetProperty! �� 
TargetName" g� RepeatBehavior	# W� To$ �� ElementName% �� 	Converter��%�   &	        &	      7     5[      66   �� 5\      .��5]   "   W� $ 0X�62   $ 00:00:10D�6�   $  X�5^      $! transferCurreny��5_      $" Forever��5`      # 5]   ;   �� *Width+$$ canvas��8%   5`      5a      5b      z�5c      T� 5d      -   5        transferCurreny��& T� X$& 0Q�5d   J   ' � Triggers' 5f      :� 5g      ( :� RoutedEvent$( StackPanel.Loaded��6+   .[�5h   "   �� #��[ 62   5i      :� 5j      $( StackPanel.SizeChanged��6+   .[�5k   "   �� #��[ 62   5l      .+�5n      �� -   5        ) ��Name$) canvas��5n   !   ��62   �� *ActualWidth+$$ stack��.+�5o      �� -   5        * ��Name$* txtKron��5o   �   $6��0This is a test of the emergance broadcast system��6(   $��35(�6`   $
��Bold"�6n   
���  ��+ �� Left$+ 0��6�   �� 5p      $��35(�6T   $
��Bold"�6b   
���  ����6(   �� *Text+$$ txtKron��+ 6�   �� *Width+$$ canvas��5q      5r      �� 5s      -   5        , ��Name$, dashDate��5s      - �� TextWrapping$
- Wrap=�60   $�� ��6D   $��45(�6L   $
��Bold"�6Z   $	��215��6l   $	��165��6x   . �� 
IsReadOnly. . $��1661,10,10,826q�6�   �� 5t      -   5        $, dTicketClosedLastMonth��5t      $
��Left=�6>   $��49��6Y   $��	10,10,0,0q�6e   $
- Wrap=�6x   $��1��6�   $	��Top=�6�   $	��143��6�   $y�Hidden=�6�   �� 5u      -   5        $, dTicketOpenedLastMonth��5u      $
��Left=�6>   $
- Wrap=�6Y   $��49��6m   $��2��6y   $	��Top=�6�   $	��144��6�   $��10,64,1733,887q�6�   $y�Hidden=�6�   �� 5v      -   5        $, dTicketClosedThisMonth��5v      $
��Left=�6>   $
- Wrap=�6Y   $��49��6m   $��3��6y   $	��Top=�6�   $	��144��6�   $��153,10,1589,941q�6�   $y�Hidden=�6�   �� 5w      -    5        $, dTicketOpenedThisMonth��5w      $
��Left=�6>   $��49��6Y   $��
153,64,0,0q�6e   $
- Wrap=�6y   $��4��6�   $	��Top=�6�   $	��144��6�   $y�Hidden=�6�   5y      5z      �� 5{      -!   5        $��	tiForcast��5{      $��Forcast��6'   .��5|      � -"   5        $��gForcast��5|      5~      5      �� 5�      -#   5        $��
tiSchedule��5�      $��Schedule��6(   .��5�      � -$   5        $��	gSchedule��5�      .+�5�      �� -%   5        $��sTabs��5�   !   $��10q�6.   
�����p���5�      �� 5�      $ .5Q�6.   $ White��6;    5�      ��%J  '��       �� 5�      " ��6$   .�5�   "   ��  � �� 5�   &   �� 5�   *   "	 ��6:   .R�5�   .   �� $��Border��65   $��1,1,1,0q�6C   
�������$
 4,4,0,0��6u   $	��2,0q�6�   ._�5�   2   �� $ ContentSite��6C   $��Center=�5�   )   $��Center=�5�   )   $��Header��5�   )   $
��10,2q�5�   )   5�   /    5�   .   P� 5�   2    �@��
IsSelected . . �5�   6   �� $ Border��6=    � ��
 ��·�6g   5�   3   P� 5�   2    �@��
IsSelected .  . �5�   6   �� $ Border��6=    � ��
 �����6g   5�   3   5�   +   5�   #   5�      5�      .@�5�      �� -&   5        $��	stiManage��5�   "   $��Manage��63   .��5�      � -'   5        $��smGrid��5�   #   .+�5�   "   �� -(   5        $��
scbOptions��5�   +   $��25��6=   $��10,10,1589,916q�6I   .@�5�   &   �� -)   5        $��	oAddShift��5�   3   $��	Add Shift��6D   �� 5�   &   -*   5        $��
oAddExcuse��5�   3   $��
Add Excuse��6E   �� 5�   &   -+   5        $��oChangeHours��5�   3   $��Change Hours��6G   5�   #   5�      5�      �� 5�      -,   5        $
��View��5�   "   $
��View��6.   5�      5�      5�      5�      5�      5�      5�      