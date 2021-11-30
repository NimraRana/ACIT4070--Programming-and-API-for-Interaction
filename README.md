
# Norwegian Rails
This project is implemented as per requirement for the final project of ACIT4070 Programming and API for Interaction. This syetem is build to provide ease in buying train tickets.


This code is implemented using c#.





## How to setup
To run this code one needs to have
1. Visual studio, with the extension of Windows Form App .NET Framework 4.7.2
2. Xamp control panel
3. MySQL server (We have used MySQL Workbench 8.0 CE)


## Implementation
#### This code is implemented using c#.
`using System.Windows.Forms;` is the library that is used for designing interface of the system. It provides drag and drop facilites for the elements, buttons and fields with by deafault coding .


namespace NorwegianRails `namespace NorwegianRails` is the entery point for the application with `static class Program`. which starts/run with the Welcome page.

        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Welcome());
        }


Below is the brief information for some functions of main pages of this website     

#### Welcome.cs 
This page has three buttons:
1. Exit with `Application.Exit()` function
2. Login with `Form1 li = new Form1();`
3. Main menu with link of "selction.cs"  `SelectionWin sw = new SelectionWin()`

#### SelectionWin.cs
It has four fields with click buttons that are connected to four different cs pages
1. button1_Click `PurchaseTicket  = new PurchaseTicket();
            pt.Text = "Purchase a Ticket";`
2. button2_Click `SelectSeat rs = new SelectSeat();
            rs.Text = "Reserve Seat";`            
3. button3_Click ` ChangeCancel cc = new ChangeCancel();`
4. button5_Click ` st.showTicket();`
    
#### PurchaseTicket.cs
It has comboboxes, radio buttons and imput forms are used. In which the connection is established with mysql database to store and process data gathered from the user for generating tickets.

`using MySql.Data.MySqlClient;` library and generating connection through


        {
            MySqlConnection sqlconn = new MySqlConnection();
                MySqlCommand sqlcmd = new MySqlCommand();
                MySqlDataReader sqlRd;

                sqlconn.ConnectionString = "datasource=localhost; port=3306; username=root; database=nrails";
                sqlconn.Open();
        }

MySql commands are used to process data, such as insert and delete.

#### TimeSch.cs
This page is used to generate time using `TimeSch : Form` by adding by default schedule for the train with connected button for the seats selection.

#### SelectSeat.cs
In this page already seats are shown to the users and then validation of the seat number is checked which the particular user has added. After validating the input the seat number will be added to mysql table and ticket number is generated which is unique number for each user.

 `sqlcmd.CommandText = "SELECT seat FROM rseats WHERE seat > 0";` is used to fetch already entered data.

 ` sqlcmd.CommandText = "SELECT id FROM `tickets` WHERE id=( SELECT MAX(id) FROM `tickets` )";` getting ticket number from database table id.

 ##### 

 This page provides two main functions to the user - Change ticket or Cancel ticket

`sqlcmd.CommandText = "DELETE FROM `tickets` WHERE id='" + textBox1.Text + "'"; ` is used to delete the data from backend

The complete code is provided and every function has labels on in to understand the code and its use

