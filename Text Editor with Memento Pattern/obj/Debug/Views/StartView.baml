   M S B A M L   `   `   `  ����[  WText Editor with Memento Pattern, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null_4clr-namespace:Text_Editor_with_Memento_Pattern.Views&Text_Editor_with_Memento_Pattern.Views  5   	   6    0Text_Editor_with_Memento_Pattern.Views.StartView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Flocal4clr-namespace:Text_Editor_with_Memento_Pattern.Views     5   	     � Title$  Memento��5   	   $	��450��6   $	��800��6&    � WindowStartupLocation$ CenterScreen=�62   .��5	      �    BackgroundColor#��[  6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��0��6   $��1��6   $��/Images/previous.png��6-   $��15q�6K    � Cursor$
 Hand��6W    J� InputBindings 5      d� 5        d� Gesture$ 	LeftClicka�6    �� Command 63   �� *PreviousCommand+ �� CommandParameter 6W   �� 	 �� ElementName$	 TxtBxMessage��5"      �� 5$   
   $��0��6   $��2��6   $��/Images/save.png��6-   $��15q�6G   $
 Hand��6S    5%      d� 5&      $ 	LeftClicka�6    63   �� *SaveCommand+5(      �� 5*   
   $��0��6   $��3��6   $��/Images/next.png��6-   $��15q�6G   $
 Hand��6S    5+      d� 5,      $ 	LeftClicka�6    63   �� *NextCommand+ 6S   �� $	 TxtBxMessage��5.      �� 50   
   -   5        
 ��Name$
 TxtBxMessage��52   A   $��1��50      $��1��6   $��3��6/   $��6��6@   $��Disabled=�6T   " �� VerticalScrollBarVisibility$
 Auto=�51      $��18(�65   $��5q�6C    �� TextWrapping$
 Wrap=�6N   $��10, 10, 0 ,0q�52      
���������53      �� *CurrentMessage+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�55      56      