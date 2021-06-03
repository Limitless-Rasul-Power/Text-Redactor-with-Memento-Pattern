using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using Text_Editor_with_Memento_Pattern.Command;

namespace Text_Editor_with_Memento_Pattern.ViewModels
{
    public class StartViewModel : INotifyPropertyChanged
    {
        private int _index;
        private string _currentMessage;     
        public event PropertyChangedEventHandler PropertyChanged;

        public StartViewModel()
        {
            SaveCommand = new RelayCommand(SaveClick);
            PreviousCommand = new RelayCommand(PreviousClick);
            NextCommand = new RelayCommand(NextClick);
        }

        public string CurrentMessage
        {
            get { return _currentMessage; }
            set { _currentMessage = value; OnPropertyChanged(); }
        }

        public ObservableCollection<string> Messages { get; set; } = new ObservableCollection<string>();
        public RelayCommand SaveCommand { get; set; }
        public RelayCommand PreviousCommand { get; set; }
        public RelayCommand NextCommand { get; set; }


        private void SaveClick(object parameter = null)
        {
            if (string.IsNullOrWhiteSpace(CurrentMessage) == false)
            {
                int count = Messages.Count;

                if (count > 0 && Messages[count - 1] == CurrentMessage)
                {
                    return;
                }

                ObservableCollection<string> temp = new ObservableCollection<string>();

                for (int i = 0; i < count; i++)
                {
                    if (CurrentMessage.Contains(Messages[i]) == false)
                    {
                        break;
                    }

                    temp.Add(Messages[i]);
                }
                temp.Add(CurrentMessage);

                Messages = temp;
                _index = Messages.Count;
            }
        }

        private void PreviousClick(object parameter = null)
        {
            if (_index - 1 >= 0)
            {
                _index = _index - 1;
                CurrentMessage = Messages[_index];
                (parameter as TextBox).SelectionStart = CurrentMessage.Length;
            }
        }

        private void NextClick(object parameter = null)
        {
            if (_index + 1 < Messages.Count)
            {
                _index = _index + 1;
                CurrentMessage = Messages[_index];
                (parameter as TextBox).SelectionStart = CurrentMessage.Length;
            }
        }

        private void OnPropertyChanged([CallerMemberName] string name = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }

    }
}