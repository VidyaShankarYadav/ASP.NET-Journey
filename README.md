# ASP.NET Journey

A collection of small **ASP.NET Web Forms** projects I built while learning the basics of web development with C# and .NET Framework. Each page focuses on one concept, from server controls and events to validation and data binding.

> This is a learning project. Some pages (especially the login pages) use hardcoded test values and are **not** meant for production use.

---

## Tech Stack

| | |
|---|---|
| **Framework** | ASP.NET Web Forms (.NET Framework 4.8) |
| **Language** | C# |
| **IDE** | Visual Studio |
| **Server** | IIS Express (built into Visual Studio) |
| **Data** | XML file (`Product.xml`) |

---

## Project Structure

```
ASP.NET-Journey/
├── FirstProject.slnx          # Visual Studio solution
└── FirstProject/
    ├── *.aspx                 # Page markup (UI)
    ├── *.aspx.cs              # Code-behind (page logic)
    ├── *.aspx.designer.cs     # Auto-generated control declarations
    ├── Global.asax            # Application-level events
    ├── Product.xml            # Sample data for list controls
    └── Web.config             # App configuration
```

---

## Pages and What They Demonstrate

### Basics
| Page | Concept |
|---|---|
| `First.aspx` | Inline server code: displays the current server date |
| `ColorDialogue.aspx` | `AutoPostBack`, `TextChanged` event, changing styles from code-behind (`TextMode="Color"`) |

### Calculators
| Page | Concept |
|---|---|
| `Calculator.aspx` | Several buttons sharing one event handler; identifying the sender with `switch` on the button ID |
| `Calculator2.aspx` | Same idea with a styled layout and a read-only result box |
| `Calculator3.aspx` | Work in progress: experimenting with `CommandName` / `Command` events |

### Form Controls
| Page | Concept |
|---|---|
| `CheckBoxes.aspx` | `RadioButton` groups, `CheckBox`, `ListBox`, building output with `StringBuilder` |
| `XMLListControl.aspx` | Binding `Product.xml` to `ListBox`, `DropDownList`, `RadioButtonList` and `CheckBoxList` using a `DataSet` |

### Login Flow and Page Navigation
| Page | Concept |
|---|---|
| `LoginForm.aspx` | Login form with `PostBackUrl` (cross-page posting) |
| `LoginForm2.aspx` | Static copy of the login form layout |
| `RespondForm.aspx` | Receiving posted form values with `Request[...]` |
| `Login3.aspx` | Login using `Server.Transfer` (success) and `Response.Redirect` with a query string (failure) |
| `Success3.aspx` | Reading controls from the previous page with `PreviousPage.FindControl` |
| `Failure3.aspx` | Reading a value from `Request.QueryString` |

### Validation
| Page | Concept |
|---|---|
| `ValidationControls.aspx` | `RequiredFieldValidator` on a textbox and a dropdown (with `InitialValue`) |
| `ValidationControl2.aspx` | Travel booking form: `RequiredFieldValidator`, `RangeValidator` (integer and date), `Calendar` control, `IsValid` check on the server |
| `ValidationControl3.aspx` | Empty page, reserved for future validators |

---

## How to Run

**Requirements**
- Windows with [Visual Studio](https://visualstudio.microsoft.com/) (2022 or later)
- The **ASP.NET and web development** workload installed
- .NET Framework 4.8 developer pack

**Steps**
1. Clone the repository:
   ```bash
   git clone https://github.com/VidyaShankarYadav/ASP.NET-Journey.git
   ```
2. Open `FirstProject.slnx` in Visual Studio.
3. Restore NuGet packages if prompted (right-click the solution, then **Restore NuGet Packages**).
4. Right-click any `.aspx` page in Solution Explorer and choose **View in Browser**, or set it as the start page and press **F5**.

---

## Configuration Notes

- `Web.config` sets `ValidationSettings:UnobtrusiveValidationMode` to `none`, so the validator controls work without needing jQuery.
- `Web.Debug.config` and `Web.Release.config` are the default Visual Studio transform files.

---

## Key Concepts Practiced

- Page life cycle and `IsPostBack`
- Server controls and event handling
- Sharing one handler across multiple controls
- Cross-page posting, `Server.Transfer` and `Response.Redirect`
- Query strings and the `Request` object
- Client and server-side validation
- Data binding from XML to list controls
- Code-behind and designer file structure

---

## Roadmap

- [ ] Finish `Calculator3.aspx` using `OnCommand`
- [ ] Add input checks (`TryParse`, divide-by-zero) to the calculators
- [ ] Encode user input before displaying it (`Server.HtmlEncode`)
- [ ] Replace hardcoded login values with a proper authentication approach
- [ ] Explore GridView, master pages and session state
- [ ] Add a database with ADO.NET

---

## Author

**Vidya Shankar Yadav**
[GitHub](https://github.com/VidyaShankarYadav)
