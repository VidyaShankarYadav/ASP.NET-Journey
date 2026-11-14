<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationControl2.aspx.cs" Inherits="FirstProject.ValidationControl2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Travel Booking</title>
    <style type="text/css">
        :root {
            --primary: #2563eb;
            --primary-dark: #1d4ed8;
            --text: #1f2937;
            --muted: #6b7280;
            --border: #d1d5db;
            --danger: #dc2626;
            --success: #16a34a;
        }

        * { box-sizing: border-box; }

        body {
            margin: 0;
            min-height: 100vh;
            font-family: "Segoe UI", Roboto, Arial, sans-serif;
            color: var(--text);
            background: linear-gradient(135deg, #dbeafe 0%, #ede9fe 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 24px;
        }

        .card {
            width: 100%;
            max-width: 460px;
            background: #fff;
            border-radius: 16px;
            box-shadow: 0 20px 45px rgba(30, 41, 59, 0.15);
            overflow: hidden;
        }

        .card-header {
            background: linear-gradient(135deg, var(--primary), #7c3aed);
            color: #fff;
            padding: 28px 32px;
            text-align: center;
        }

        .card-header h1 {
            margin: 0;
            font-size: 26px;
            letter-spacing: 0.5px;
        }

        .card-header p {
            margin: 6px 0 0;
            font-size: 14px;
            opacity: 0.9;
        }

        .card-body { padding: 28px 32px 32px; }

        .form-group { margin-bottom: 20px; }

        .form-group label {
            display: block;
            margin-bottom: 6px;
            font-size: 14px;
            font-weight: 600;
        }

        .input {
            width: 100%;
            padding: 11px 14px;
            font-size: 15px;
            border: 1px solid var(--border);
            border-radius: 8px;
            outline: none;
            transition: border-color .2s, box-shadow .2s;
        }

        .input:focus {
            border-color: var(--primary);
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.2);
        }

        .date-row {
            display: flex;
            gap: 10px;
        }

        .date-row .input { flex: 1; }

        .btn {
            border: none;
            border-radius: 8px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            transition: background .2s, transform .1s;
        }

        .btn:active { transform: scale(0.98); }

        .btn-date {
            padding: 0 16px;
            background: #eef2ff;
            color: var(--primary);
            white-space: nowrap;
        }

        .btn-date:hover { background: #e0e7ff; }

        .btn-submit {
            width: 100%;
            padding: 13px;
            margin-top: 6px;
            background: var(--primary);
            color: #fff;
        }

        .btn-submit:hover { background: var(--primary-dark); }

        .error {
            display: block;
            margin-top: 5px;
            font-size: 13px;
            color: var(--danger);
        }

        /* Calendar */
        .calendar-wrap {
            margin-top: 12px;
            display: flex;
            justify-content: center;
        }

        .calendar {
            width: 100%;
            border: 1px solid var(--border) !important;
            border-radius: 10px;
            border-collapse: separate !important;
            overflow: hidden;
            font-size: 14px;
            background: #fff;
        }

        .calendar td { text-align: center; padding: 2px; }
        .calendar td a { display: block; padding: 8px 0; text-decoration: none; color: var(--text); border-radius: 6px; }
        .calendar td a:hover { background: #eef2ff; }

        .cal-title { background: var(--primary); color: #fff; font-weight: 600; }
        .cal-title a { color: #fff !important; }
        .cal-title a:hover { background: transparent !important; opacity: .8; }
        .cal-dayheader { color: var(--muted); font-size: 12px; font-weight: 600; }
        .cal-today { background: #fef3c7; font-weight: 700; }
        .cal-selected { background: var(--primary) !important; }
        .cal-selected a { color: #fff !important; }
        .cal-other a { color: #b6bcc7 !important; }

        /* Result message */
        .message {
            display: block;
            margin-top: 18px;
            padding: 12px 14px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 600;
            text-align: center;
        }

        .message:empty { display: none; }
        .message.success { background: #dcfce7; color: var(--success); }
        .message.fail { background: #fee2e2; color: var(--danger); }

        @media (max-width: 480px) {
            .card-header, .card-body { padding-left: 20px; padding-right: 20px; }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="width:100%; max-width:460px;">
        <div class="card">
            <div class="card-header">
                <h1>&#9992; Travel Booking</h1>
                <p>Fill in your details to book your journey</p>
            </div>

            <div class="card-body">
                <!-- Name -->
                <div class="form-group">
                    <label for="TextBox1">Full Name</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="input" placeholder="Enter your name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="TextBox1" Display="Dynamic" CssClass="error"
                        ErrorMessage="Please enter your name." SetFocusOnError="True">
                    </asp:RequiredFieldValidator>
                </div>

                <!-- Age -->
                <div class="form-group">
                    <label for="TextBox2">Age</label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="input" MaxLength="3" placeholder="18 - 60"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="TextBox2" Display="Dynamic" CssClass="error"
                        ErrorMessage="Please enter your age." SetFocusOnError="True">
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server"
                        ControlToValidate="TextBox2" Display="Dynamic" CssClass="error"
                        Type="Integer" MinimumValue="18" MaximumValue="60"
                        ErrorMessage="Age should be between 18 and 60." SetFocusOnError="True">
                    </asp:RangeValidator>
                </div>

                <!-- Date of journey -->
                <div class="form-group">
                    <label for="TextBox3">Date of Journey</label>
                    <div class="date-row">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="input" placeholder="dd/MM/yyyy"></asp:TextBox>
                        <asp:Button ID="datebutton" runat="server" Text="&#128197; Choose"
                            CssClass="btn btn-date" CausesValidation="False" OnClick="datebutton_Click" />
                    </div>

                    <div class="calendar-wrap">
                        <asp:Calendar ID="Calendar1" runat="server" Visible="False"
                            OnSelectionChanged="Calendar1_SelectionChanged"
                            CssClass="calendar"
                            ShowGridLines="False"
                            NextPrevFormat="ShortMonth"
                            TitleStyle-CssClass="cal-title"
                            NextPrevStyle-CssClass="cal-title"
                            DayHeaderStyle-CssClass="cal-dayheader"
                            TodayDayStyle-CssClass="cal-today"
                            SelectedDayStyle-CssClass="cal-selected"
                            OtherMonthDayStyle-CssClass="cal-other">
                        </asp:Calendar>
                    </div>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="TextBox3" Display="Dynamic" CssClass="error"
                        ErrorMessage="Please select date of journey." SetFocusOnError="True">
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server"
                        ControlToValidate="TextBox3" Display="Dynamic" CssClass="error"
                        Type="Date"
                        ErrorMessage="Please select a date within the next 60 days." SetFocusOnError="True">
                    </asp:RangeValidator>
                </div>

                <!-- Submit -->
                <asp:Button ID="Button1" runat="server" Text="Book Now"
                    CssClass="btn btn-submit" OnClick="Button1_Click" />

                <!-- Result -->
                <asp:Label ID="Label1" runat="server" CssClass="message"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>