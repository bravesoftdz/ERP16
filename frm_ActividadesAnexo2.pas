unit frm_ActividadesAnexo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, global, frm_barra, db, Grids, frm_Connection, StdCtrls,
  DBCtrls, ComCtrls, Mask, Utilerias, StrUtils, Menus, Buttons,
  ExtCtrls, frxClass, frxDBSet, jpeg, RXDBCtrl, DateUtils,
  math, Newpanel, ExtDlgs, Sockets, RxLookup, ZAbstractRODataset, unitvalidacion,
  ZAbstractDataset, ZDataset, rxCurrEdit, rxToolEdit, MasUtilerias,
  acProgressBar, Tabs, BarrasGantt, AdvToolBar, ToolPanels, AdvNavBar, AdvPanel,
  AdvToolBtn, DBGrids, TeEngine, Series, TeeProcs, Chart, UnitTBotonesPermisos,
  RxMemDS, ComObj, OleServer, ExcelXP, unitexcepciones, udbgrid, AdvGlowButton,
  unitactivapop, NxPageControl, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  DBDateTimePicker, UFunctionsGHH, NxCollection, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  cxCheckBox, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, FormAutoScaler;

type
  TfrmActividadesAnexo2 = class(TForm)
    dbActividadesxAnexo: TfrxDBDataset;
    ds_actividadesxanexo: TDataSource;
    dbPartidasxAlcance: TfrxDBDataset;
    PopupPrincipal: TPopupMenu;
    Insertar1: TMenuItem;
    Editar1: TMenuItem;
    N1: TMenuItem;
    Registrar1: TMenuItem;
    Can1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    Refresh1: TMenuItem;
    N3: TMenuItem;
    Salir1: TMenuItem;
    N5: TMenuItem;
    Detalledelapartida1: TMenuItem;
    ComentariosAdicionalesalaPartida1: TMenuItem;
    ImprimirAlcancesxPartida1: TMenuItem;
    BuscarPartida1: TMenuItem;
    mnFichaTecnica: TMenuItem;
    frxDetalleAlcance: TfrxReport;
    ds_Paquetes: TDataSource;
    ActividadesxAnexo: TZQuery;
    ActividadesxAnexodMontoMN: TCurrencyField;
    ActividadesxAnexodMontoDLL: TCurrencyField;
    ActividadesxAnexosWbsSpace: TStringField;
    PartidasxAlcance: TZReadOnlyQuery;
    SumAvance: TZReadOnlyQuery;
    Paquetes: TZReadOnlyQuery;
    PaquetesiNivel: TIntegerField;
    PaquetessWBS: TStringField;
    PaquetessWBSAnterior: TStringField;
    PaquetessNumeroActividad: TStringField;
    PaquetesmDescripcion: TMemoField;
    PaquetesdFechaInicio: TDateField;
    PaquetesdFechaFinal: TDateField;
    PaquetesdDuracion: TFloatField;
    PaquetessDescripcion: TStringField;
    ActividadesxAnexosContrato: TStringField;
    ActividadesxAnexosIdConvenio: TStringField;
    ActividadesxAnexoiNivel: TIntegerField;
    ActividadesxAnexosSimbolo: TStringField;
    ActividadesxAnexosWbs: TStringField;
    ActividadesxAnexosWbsAnterior: TStringField;
    ActividadesxAnexosNumeroActividad: TStringField;
    ActividadesxAnexosTipoActividad: TStringField;
    ActividadesxAnexosEspecificacion: TStringField;
    ActividadesxAnexosActividadAnterior: TStringField;
    ActividadesxAnexomDescripcion: TMemoField;
    ActividadesxAnexodFechaInicio: TDateField;
    ActividadesxAnexodDuracion: TFloatField;
    ActividadesxAnexodFechaFinal: TDateField;
    ActividadesxAnexodPonderado: TFloatField;
    ActividadesxAnexodCostoMN: TFloatField;
    ActividadesxAnexodCostoDll: TFloatField;
    ActividadesxAnexodVentaMN: TFloatField;
    ActividadesxAnexodVentaDLL: TFloatField;
    ActividadesxAnexolCalculo: TStringField;
    ActividadesxAnexodCantidadAnexo: TFloatField;
    ActividadesxAnexodCargado: TFloatField;
    ActividadesxAnexodInstalado: TFloatField;
    ActividadesxAnexodExcedente: TFloatField;
    ActividadesxAnexoiColor: TIntegerField;
    ActividadesxAnexolExtraordinario: TStringField;
    ActividadesxAnexosIdFase: TStringField;
    DatalleAlcances: TMenuItem;
    PonderarConceptos: TMenuItem;
    AnexoC: TfrxReport;
    ActividadesxAnexoiItemOrden: TStringField;
    PaquetesiItemOrden: TStringField;
    mnHereda: TMenuItem;
    ActividadesxAnexosMedida: TStringField;
    zFasesProyecto: TZReadOnlyQuery;
    dsFasesxProyecto: TDataSource;
    AdministraciondelContrato1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    DetPaquete: TMenuItem;
    ImprimirCosto: TMenuItem;
    AdvPanel1: TAdvPanel;
    AdvToolButton1: TAdvToolButton;
    btnDetalle: TAdvToolButton;
    AdvToolButton7: TAdvToolButton;
    AdvToolButton8: TAdvToolButton;
    AdvToolButton9: TAdvToolButton;
    AdvToolButton10: TAdvToolButton;
    AdvToolButton11: TAdvToolButton;
    BtnMateriales: TAdvToolButton;
    Personal: TZQuery;
    ds_personal: TDataSource;
    equipos: TZQuery;
    equipossContrato: TStringField;
    equipossNumeroActividad: TStringField;
    equipossIdEquipo: TStringField;
    equiposdCantidad: TFloatField;
    equiposdCostoMN: TFloatField;
    equiposdCostoDLL: TFloatField;
    equipossDescripcion: TStringField;
    ds_equipos: TDataSource;
    inventario: TZQuery;
    inventariosContrato: TStringField;
    inventariosWbs: TStringField;
    inventariosNumeroActividad: TStringField;
    inventariosIdInventario: TStringField;
    inventariodCantidad: TFloatField;
    inventariosDescripcion: TStringField;
    ds_Inventario: TDataSource;
    dsBasicos: TDataSource;
    basicos: TZQuery;
    basicossContrato: TStringField;
    basicossNumeroActividad: TStringField;
    basicossIdBasico: TStringField;
    basicosdCantidad: TFloatField;
    basicossDescripcion: TStringField;
    basicossWbs: TStringField;
    BuscaObjeto: TZReadOnlyQuery;
    BuscaObjetosDescripcion: TStringField;
    ds_buscaobjeto: TDataSource;
    Panel: tNewGroupBox;
    ListaObjeto: TRxDBGrid;
    ds_herramientas: TDataSource;
    BtnFases: TAdvToolButton;
    ds_explosion: TDataSource;
    PersonalsContrato: TStringField;
    PersonalsWbs: TStringField;
    PersonalsNumeroActividad: TStringField;
    PersonaldCantidad: TFloatField;
    PersonaldCostoMN: TFloatField;
    PersonaldCostoDLL: TFloatField;
    PersonalsNumeroPaquete: TStringField;
    PersonalsDescripcion: TStringField;
    Personalfila: TIntegerField;
    PersonalsSimbolo: TStringField;
    rxFicha_Tecnica: TRxMemoryData;
    rxFicha_TecnicasContrato: TStringField;
    rxFicha_TecnicasNumeroActividad: TStringField;
    rxFicha_TecnicaDescripcionAnexo: TStringField;
    rxFicha_TecnicaCantidadAnexo: TFloatField;
    rxFicha_TecnicaMedidaAnexo: TStringField;
    rxFicha_TecnicaCostoMNAnexo: TFloatField;
    rxFicha_TecnicaCostoDLLAnexo: TFloatField;
    rxFicha_TecnicaTipo: TStringField;
    rxFicha_TecnicaId: TStringField;
    rxFicha_TecnicaDescripcion: TStringField;
    rxFicha_TecnicaUnidad: TStringField;
    rxFicha_TecnicaCantidad: TFloatField;
    rxFicha_TecnicaCostoMN: TFloatField;
    rxFicha_TecnicaCostoDLL: TFloatField;
    frxFicha_Tecnica: TfrxDBDataset;
    rxFicha_TecnicaDirectos: TFloatField;
    rxFicha_TecnicaIndirectos: TFloatField;
    rxFicha_TecnicaFinanciamiento: TFloatField;
    rxFicha_TecnicaUtilidad: TFloatField;
    rxFicha_TecnicaAdicional1: TFloatField;
    rxFicha_TecnicaAdicional2: TFloatField;
    rxFicha_TecnicaAdicional3: TFloatField;
    basicosdCostoMN: TFloatField;
    basicosdCostoDLL: TFloatField;
    inventariodCostoMN: TFloatField;
    inventariodCostoDLL: TFloatField;
    rxFicha_Tecnicarendimiento: TFloatField;
    rxFicha_Tecnicasubtotal: TFloatField;
    rxFicha_Tecnicatotal: TFloatField;
    rxFicha_TecnicaEspacio: TStringField;
    rxFicha_TecnicaNivel: TIntegerField;
    rxExplosion: TRxMemoryData;
    StringField1: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField9: TStringField;
    IntegerField1: TIntegerField;
    db_Explosion: TfrxDBDataset;
    herramientas: TZQuery;
    herramientassContrato: TStringField;
    herramientassWbs: TStringField;
    herramientassNumeroActividad: TStringField;
    herramientassIdHerramientas: TStringField;
    herramientasdCantidad: TFloatField;
    herramientassDescripcion: TStringField;
    herramientasdCostoMN: TFloatField;
    herramientasdCostoDLL: TFloatField;
    rxFicha_TecnicadIndirecto: TFloatField;
    rxFicha_TecnicadFinanciamiento: TFloatField;
    rxFicha_TecnicadUtilidad: TFloatField;
    rxFicha_TecnicadAdicionales: TFloatField;
    rxFicha_TecnicadOtroAdicional: TFloatField;
    equipossWbs: TStringField;
    MenuDos: TPopupMenu;
    EliminarRegistro1: TMenuItem;
    PersonalsIdPersonal: TStringField;
    rxFicha_TecnicaCuadrilla: TStringField;
    rxFicha_TecnicatotalPU: TFloatField;
    Timer1: TTimer;
    mdGrafica: TRxMemoryData;
    roqAnexo: TZReadOnlyQuery;
    ExcelApplication1: TExcelApplication;
    SaveDialog1: TSaveDialog;
    ExportaAnexoExcel1: TMenuItem;
    ConvMayus: TMenuItem;
    ConvMinus: TMenuItem;
    ActividadesxAnexosAnexo: TStringField;
    ds_anexos: TDataSource;
    Anexos: TZReadOnlyQuery;
    ExportaFasesaPlantillaExcel1: TMenuItem;
    ActividadesxAnexoNewSimbol: TStringField;
    AdvPanel2: TAdvPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    PanelMenu: TAdvPanel;
    btnAdd: TAdvGlowButton;
    btnEdit: TAdvGlowButton;
    btnPost: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    btnDelete: TAdvGlowButton;
    btnPrinter: TAdvGlowButton;
    btnRefresh: TAdvGlowButton;
    btnExit: TAdvGlowButton;
    AdvPanel3: TAdvPanel;
    NxPCAnexo: TNxPageControl;
    NxTabSheet1: TNxTabSheet;
    tNewGroupBox1: tNewGroupBox;
    Label18: TLabel;
    Label1: TLabel;
    Label27: TLabel;
    Label26: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label23: TLabel;
    Label16: TLabel;
    EtiquetaPU1: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label33: TLabel;
    tsIdAnexo: TDBLookupComboBox;
    tNewGroupBox2: tNewGroupBox;
    Label7: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    tdDuracion: TDBEdit;
    tmDescripcion: TDBMemo;
    tdVentaDLL: TRxDBCalcEdit;
    tdVentaMN: TRxDBCalcEdit;
    tdCostoDLL: TRxDBCalcEdit;
    tdCostoMN: TRxDBCalcEdit;
    tdCantidadAnexo: TRxDBCalcEdit;
    tsPaquete: TRxDBLookupCombo;
    tdMontoDLL: TDBEdit;
    tdMontoMN: TDBEdit;
    tsEspecificacion: TDBEdit;
    tsIdFase: TDBLookupComboBox;
    tsPartidaAnterior: TDBEdit;
    tlExtraordinario: TDBComboBox;
    tsMedida: TDBEdit;
    tsNumeroActividad: TDBEdit;
    tlCalcula: TDBComboBox;
    tiColores: TColorBox;
    tdPonderado: TDBEdit;
    tiColor: TDBComboBox;
    progreso: TProgressBar;
    Panel2: TPanel;
    frmBarra1: TfrmBarra;
    NxTabSheet2: TNxTabSheet;
    tNewGroupBox8: tNewGroupBox;
    Label42: TLabel;
    NxTabSheet6: TNxTabSheet;
    tNewGroupBox5: tNewGroupBox;
    Grid_Inventario: TRxDBGrid;
    tdFechaInicio: TDBDateTimePicker;
    tdFechaFinal: TDBDateTimePicker;
    Label43: TLabel;
    ActividadesxAnexosDescripcion: TStringField;
    rxFicha_Tecnicafila: TIntegerField;
    PersonaldRendimiento: TFloatField;
    PersonaldCostoTotalMN: TFloatField;
    PersonaldCostoTotalDLL: TFloatField;
    rxFicha_TecnicaRendimiento_paq: TFloatField;
    rxFicha_TecnicadTotalMN_paq: TFloatField;
    equiposdCostoTotalMN: TFloatField;
    equiposdCostoTotalDLL: TFloatField;
    herramientasdCostoTotalMN: TFloatField;
    herramientasdCostoTotalDLL: TFloatField;
    inventariodCostoTotalMN: TFloatField;
    inventariodCostoTotalDLL: TFloatField;
    basicosdCostoTotalMN: TFloatField;
    basicosdCostoTotalDLL: TFloatField;
    basicosdRendimiento: TFloatField;
    basicossNumeroPaquete: TStringField;
    basicossSimbolo: TStringField;
    basicosfila: TIntegerField;
    herramientasdRendimiento: TFloatField;
    herramientasfila: TIntegerField;
    herramientassSimbolo: TStringField;
    herramientassNumeroPaquete: TStringField;
    MenuTres: TPopupMenu;
    MenuItem1: TMenuItem;
    EliminarTodoslosRegistros1: TMenuItem;
    InsertarCatalogodeMateriales1: TMenuItem;
    BuscaObjetosMedida: TStringField;
    BuscaObjetoId: TStringField;
    BuscaObjetodVentaMN: TFloatField;
    BuscaObjetodVentaDLL: TFloatField;
    N4: TMenuItem;
    ProgramacionDiariadelConceptodelaCia1: TMenuItem;
    ComparativoInstaladoVsProgramadoVsGeneradoExcel1: TMenuItem;
    Grid_subactividades: TRxDBGrid;
    ds_subactividad: TDataSource;
    subactividades: TZQuery;
    PanelSubActividad: tNewGroupBox;
    PanelDatos: TNxFlipPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    tsMedidaSub: TEdit;
    tsSubActividad: TEdit;
    Label19: TLabel;
    tdFechaFinalSub: TDateTimePicker;
    tdFechaInicioSub: TDateTimePicker;
    Label20: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    tmDescripcionSub: TMemo;
    tdVentaMNSub: TRxCalcEdit;
    tdVentaDLLSub: TRxCalcEdit;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    tdDuracionSub: TRxCalcEdit;
    tdPonderadoSub: TRxCalcEdit;
    tdCantidadSub: TRxCalcEdit;
    tsTipo: TComboBox;
    cmdAceptar: TButton;
    cmdCancelar: TButton;
    btnNuevoPersonal: TBitBtn;
    chkItemOrden: TCheckBox;
    chkCalculaWbs: TCheckBox;
    Label34: TLabel;
    tsItemOrden: TDBEdit;
    pgAnexo: TPageControl;
    TabSheet1: TTabSheet;
    Label35: TLabel;
    tsTipoAnexo: TDBComboBox;
    ActividadesxAnexosTipoAnexo: TStringField;
    ActividadesxAnexosWbsPU: TStringField;
    equiposdRendimiento: TFloatField;
    herramientaseTipoHerramienta: TStringField;
    chkFiltroTodo: TcxCheckBox;
    grid_Actividades: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column2: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column3: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column4: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column5: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column6: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column7: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column8: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column9: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column10: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column11: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column12: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column13: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column14: TcxGridDBColumn;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    FrmScaler1: TFormAutoScaler;

    procedure FormShow(Sender: TObject);
    procedure tsNumeroActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicioKeyPress(Sender: TObject; var Key: Char);
    procedure tdDuracionKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaFinalKeyPress(Sender: TObject; var Key: Char);
    procedure tdPonderadoKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdPlataformaKeyPress(Sender: TObject; var Key: Char);
    procedure frmBarra1btnAddClick(Sender: TObject);
    procedure frmBarra1btnEditClick(Sender: TObject);
    procedure frmBarra1btnPostClick(Sender: TObject);
    procedure frmBarra1btnCancelClick(Sender: TObject);
    procedure frmBarra1btnDeleteClick(Sender: TObject);
    procedure frmBarra1btnRefreshClick(Sender: TObject);
    procedure frmBarra1btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tdDuracionExit(Sender: TObject);
    procedure Insertar1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Registrar1Click(Sender: TObject);
    procedure Can1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure tsMedidaKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadAnexoKeyPress(Sender: TObject; var Key: Char);
    function lExisteMedida(sMedida: string): Boolean;
    procedure tsMedidaExit(Sender: TObject);
    procedure tsIdMaterialKeyPress(Sender: TObject; var Key: Char);
    procedure tiColorKeyPress(Sender: TObject; var Key: Char);
    procedure tiItemOrdenKeyPress(Sender: TObject; var Key: Char);
    procedure tdFechaInicioExit(Sender: TObject);
    procedure frmBarra1btnPrinterClick(Sender: TObject);
    procedure tsNumeroActividadEnter(Sender: TObject);
    procedure tsNumeroActividadExit(Sender: TObject);
    procedure tdCantidadAnexoEnter(Sender: TObject);
    procedure tdCantidadAnexoExit(Sender: TObject);
    procedure tsMedidaEnter(Sender: TObject);
    procedure tmDescripcionEnter(Sender: TObject);
    procedure tmDescripcionExit(Sender: TObject);
    procedure tdFechaInicioEnter(Sender: TObject);
    procedure tdDuracionEnter(Sender: TObject);
    procedure tdFechaFinalEnter(Sender: TObject);
    procedure tdFechaFinalExit(Sender: TObject);
    procedure tdPonderadoEnter(Sender: TObject);
    procedure tdPonderadoExit(Sender: TObject);
    procedure tlCalculaEnter(Sender: TObject);
    procedure tlCalculaExit(Sender: TObject);
    procedure tlExtraordinarioKeyPress(Sender: TObject; var Key: Char);
    procedure tlExtraordinarioEnter(Sender: TObject);
    procedure tlExtraordinarioExit(Sender: TObject);
    procedure tdCostoMNEnter(Sender: TObject);
    procedure tdCostoMNExit(Sender: TObject);
    procedure tdCostoMNKeyPress(Sender: TObject; var Key: Char);
    procedure tdCostoDLLEnter(Sender: TObject);
    procedure tdCostoDLLExit(Sender: TObject);
    procedure tdCostoDLLKeyPress(Sender: TObject; var Key: Char);
    procedure tdVentaMNEnter(Sender: TObject);
    procedure tdVentaMNExit(Sender: TObject);
    procedure tdVentaMNKeyPress(Sender: TObject; var Key: Char);
    procedure tdVentaDLLEnter(Sender: TObject);
    procedure tdVentaDLLExit(Sender: TObject);
    procedure tdVentaDLLKeyPress(Sender: TObject; var Key: Char);

    procedure tsPartidaAnteriorEnter(Sender: TObject);
    procedure tsPartidaAnteriorExit(Sender: TObject);
    procedure tsPartidaAnteriorKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdFaseKeyPress(Sender: TObject; var Key: Char);
    procedure tsIdFaseEnter(Sender: TObject);
    procedure tsIdFaseExit(Sender: TObject);
    procedure AlcancesxActividadAfterInsert(DataSet: TDataSet);
    procedure Grid_PartidasConveniosGetCellParams(Sender: TObject;
      Field: TField; AFont: TFont; var Background: TColor;
      Highlight: Boolean);
    procedure tsEspecificacionEnter(Sender: TObject);
    procedure tsEspecificacionExit(Sender: TObject);
    procedure tsEspecificacionKeyPress(Sender: TObject; var Key: Char);
    procedure CopiarAlcances1Click(Sender: TObject);
    procedure PegarAlcances1Click(Sender: TObject);
    procedure ImprimirAlcancesporActividad1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure DetalledelaPartida1Click(Sender: TObject);
    procedure Grid_ActividadesCellClick(Column: TColumn);
    procedure AlcancesxActividadBeforePost(DataSet: TDataSet);
    procedure AlcancesxActividadBeforeEdit(DataSet: TDataSet);
    procedure ComentariosAdicionalesalaPartida1Click(Sender: TObject);
    procedure tsNumeroActividadChange(Sender: TObject);
    procedure EliminaAlcancesClick(Sender: TObject);
    procedure tlCalculaKeyPress(Sender: TObject; var Key: Char);
    procedure Grid_ActividadesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure BuscarPartida1Click(Sender: TObject);
    procedure mnFichaTecnicaClick(Sender: TObject);
    procedure ActividadesxAnexoAfterInsert(DataSet: TDataSet);
    procedure ActividadesxAnexoCalcFields(DataSet: TDataSet);
    procedure ActividadesxAnexosWbsAnteriorChange(Sender: TField);
    procedure tsPaqueteEnter(Sender: TObject);
    procedure tsPaqueteExit(Sender: TObject);
    procedure tsPaqueteKeyPress(Sender: TObject; var Key: Char);
    procedure tiColoresChange(Sender: TObject);
    procedure PaquetesCalcFields(DataSet: TDataSet);
    procedure Grid_ActividadesDblClick(Sender: TObject);
    procedure DatalleAlcancesClick(Sender: TObject);
    procedure AlcancesxActividadAfterPost(DataSet: TDataSet);
    procedure AlcancesxActividadAfterDelete(DataSet: TDataSet);
    procedure PonderarConceptosClick(Sender: TObject);
    procedure mnHeredaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DetPaqueteClick(Sender: TObject);
    procedure zProcCancelaInsert(DataSet: TDataSet);
    procedure BuscaWbs(dParamWbsAnt, dParamActividadAnt, dParamWbs, dParamActividad, dParamTipo, dParamDescrip, dParamMedida: string; dParamVentaMN, dParamVentaDLL, dParamCostoMN, dParamCostoDLL: double; dParamAnexoAnt, dParamAnexo: string; dParamMensaje: Boolean);
    procedure ImprimirCostoClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure BtnPersonalClick(Sender: TObject);
    procedure PersonalAfterInsert(DataSet: TDataSet);
    procedure BtnEquipoClick(Sender: TObject);
    procedure BtnMaterialesClick(Sender: TObject);

    procedure PersonalsIdPersonalChange(Sender: TField);
    procedure equiposAfterInsert(DataSet: TDataSet);
    procedure inventarioAfterInsert(DataSet: TDataSet);
    procedure equipossIdEquipoChange(Sender: TField);
    procedure inventariosIdInventarioChange(Sender: TField);
    procedure inventarioBeforePost(DataSet: TDataSet);
    procedure equiposBeforePost(DataSet: TDataSet);
    procedure ListaObjetoDblClick(Sender: TObject);
    procedure ListaObjetoKeyPress(Sender: TObject; var Key: Char);
    procedure ListaObjetoExit(Sender: TObject);
    procedure PersonalCalcFields(DataSet: TDataSet);
    procedure equiposCalcFields(DataSet: TDataSet);
    procedure inventarioCalcFields(DataSet: TDataSet);
    procedure basicosCalcFields(DataSet: TDataSet);
    procedure basicosAfterInsert(DataSet: TDataSet);
    procedure basicosBeforePost(DataSet: TDataSet);
    procedure basicossIdBasicoChange(Sender: TField);
    procedure herramientasCalcFields(DataSet: TDataSet);
    procedure herramientasBeforePost(DataSet: TDataSet);
    procedure herramientasAfterInsert(DataSet: TDataSet);
    procedure herramientassIdHerramientasChange(Sender: TField);
    procedure BtnHerramientaClick(Sender: TObject);
    procedure PersonalAfterDelete(DataSet: TDataSet);
    procedure PersonalBeforeDelete(DataSet: TDataSet);
    procedure herramientasAfterDelete(DataSet: TDataSet);
    procedure herramientasAfterPost(DataSet: TDataSet);
    procedure inventarioAfterDelete(DataSet: TDataSet);
    procedure inventarioAfterPost(DataSet: TDataSet);
    procedure basicosAfterDelete(DataSet: TDataSet);
    procedure basicosAfterPost(DataSet: TDataSet);
    procedure equiposAfterDelete(DataSet: TDataSet);
    procedure equiposAfterPost(DataSet: TDataSet);
    procedure ImprimirExplosiondeInsumos1Click(Sender: TObject);

    procedure Grid_personalGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Grid_personalDblClick(Sender: TObject);
    procedure BtnFasesClick(Sender: TObject);
    procedure mdGraficaFilterRecord(DataSet: TDataSet; var Accept: Boolean);

    procedure ExportaAnexoExcel1Click(Sender: TObject);
    procedure formatoEncabezado();
    procedure ActivaPopMenu(pOpcion: boolean);
    function actualizarTablas(sWbsOrig, sNumeroActividadOrig, sidfaseOrig: string): boolean;
    procedure PopupPrincipalPopup(Sender: TObject);
    procedure ConvMayusClick(Sender: TObject);
    procedure ConvMinusClick(Sender: TObject);
    procedure tsIdAnexoEnter(Sender: TObject);
    procedure tsIdAnexoExit(Sender: TObject);
    procedure tsIdAnexoKeyPress(Sender: TObject; var Key: Char);
    procedure Grid_personalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_personalMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_personalTitleClick(Column: TColumn);
    procedure Grid_ActividadesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_ActividadesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_ActividadesTitleClick(Column: TColumn);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Grid_HerramientasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_HerramientasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_HerramientasTitleClick(Column: TColumn);
    procedure Grid_BasicosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_BasicosMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_BasicosTitleClick(Column: TColumn);
    procedure Grid_InventarioMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_InventarioMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_InventarioTitleClick(Column: TColumn);
    procedure Grid_EquiposMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Grid_EquiposMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Grid_EquiposTitleClick(Column: TColumn);
    procedure ExportaFasesaPlantillaExcel1Click(Sender: TObject);
    procedure ActividadesxAnexoNewSimbolGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure NxPCAnexoChanging(Sender: TObject; PageIndex: Integer;
      var AllowChange: Boolean);
    procedure NxPCAnexoChange(Sender: TObject);
    procedure tsMedidaChange(Sender: TObject);
    procedure tdCostoMNChange(Sender: TObject);
    procedure tdVentaMNChange(Sender: TObject);
    procedure tdVentaDLLChange(Sender: TObject);
    procedure PersonalPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure PersonalDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure equiposPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure basicosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure herramientasPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure inventarioPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure equiposDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure basicosDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure herramientasDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure inventarioDeleteError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure ActividadesxAnexoBeforePost(DataSet: TDataSet);
    procedure tdCostoDLLChange(Sender: TObject);
    procedure tdCantidadAnexoChange(Sender: TObject);
    procedure tdDuracionChange(Sender: TObject);
    procedure tdPonderadoChange(Sender: TObject);
    procedure tdMontoMNKeyPress(Sender: TObject; var Key: Char);
    procedure tdMontoMNChange(Sender: TObject);
    procedure tdMontoMNEnter(Sender: TObject);
    procedure tdMontoMNExit(Sender: TObject);
    procedure ActividadesxAnexodPonderadoSetText(Sender: TField;
      const Text: string);

    procedure InsertaCadrilla(sParamPaquete, sParamRecurso: string; iParamId: integer);
    procedure AgruparPaquete(sParamTipo, sParamSimbolo, sParamPaquete, sParamTabla: string);
    procedure CamposCalculados(sParamId, sParamIdRecurso, sParamPaquete, sParamTabla, sParamTablaPaq: string; iParamFila: integer);
    procedure DespuesInsertado(sParamTabla: string);
    procedure AntesEliminar(sParamTabla, sParamTipo, sParamPaquete: string; iParamFila: integer);
    procedure AntesGuardar(SetDatos: TDataSet; sParamTabla: string);
    procedure ActualizaSentencias();

    procedure Grid_HerramientasGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Grid_BasicosGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Grid_HerramientasDblClick(Sender: TObject);
    procedure Grid_BasicosDblClick(Sender: TObject);
    procedure PersonalAfterPost(DataSet: TDataSet);
    procedure basicosBeforeDelete(DataSet: TDataSet);
    procedure herramientasBeforeDelete(DataSet: TDataSet);
    procedure PersonalBeforePost(DataSet: TDataSet);
    procedure EliminarRegistro1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure EliminarTodoslosRegistros1Click(Sender: TObject);
    procedure InsertarCatalogodeMateriales1Click(Sender: TObject);
    procedure MenuDosPopup(Sender: TObject);
    procedure ProgramacionDiariadelConceptodelaCia1Click(Sender: TObject);

    procedure ProgramarActividad();
    procedure AntesInsertarSubactividad;
    procedure ComparativoInstaladoVsProgramadoVsGeneradoExcel1Click(
      Sender: TObject);
    procedure cmdCancelarClick(Sender: TObject);
    procedure subactividadesAfterInsert(DataSet: TDataSet);
    procedure cmdAceptarClick(Sender: TObject);
    procedure tsSubActividadEnter(Sender: TObject);
    procedure tsSubActividadExit(Sender: TObject);
    procedure tmDescripcionSubEnter(Sender: TObject);
    procedure tmDescripcionSubExit(Sender: TObject);
    procedure tsMedidaSubEnter(Sender: TObject);
    procedure tsMedidaSubExit(Sender: TObject);
    procedure tsSubActividadKeyPress(Sender: TObject; var Key: Char);
    procedure tdDuracionSubKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadSubEnter(Sender: TObject);
    procedure tdCantidadSubExit(Sender: TObject);
    procedure tdPonderadoSubEnter(Sender: TObject);
    procedure tdPonderadoSubExit(Sender: TObject);
    procedure tdFechaInicioSubExit(Sender: TObject);
    procedure tdFechaInicioSubEnter(Sender: TObject);
    procedure tdFechaFinalSubEnter(Sender: TObject);
    procedure tdFechaFinalSubExit(Sender: TObject);
    procedure tdVentaMNSubEnter(Sender: TObject);
    procedure tdVentaMNSubExit(Sender: TObject);
    procedure tdVentaDLLSubEnter(Sender: TObject);
    procedure tdVentaDLLSubExit(Sender: TObject);
    procedure tdDuracionSubEnter(Sender: TObject);
    procedure tdDuracionSubExit(Sender: TObject);
    procedure Grid_subactividadesDblClick(Sender: TObject);
    procedure Grid_subactividadesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure pgAnexoChange(Sender: TObject);
    procedure Grid_Actividades_puGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure mostrarTodos;
    procedure chkFiltroTodoClick(Sender: TObject);

    procedure costosMateriales;
    procedure costosPersonal;
    procedure costosEquipo;
    procedure costosBasicos;
    procedure costosHerramientas;

    procedure distribucion(tipo: string);
    function formatoFecha(fecha: TDate) : string;
    procedure BtnExplosionClick(Sender: TObject);
    procedure tmDescripcionSubKeyPress(Sender: TObject; var Key: Char);
    procedure tsMedidaSubKeyPress(Sender: TObject; var Key: Char);
    procedure tdCantidadSubKeyPress(Sender: TObject; var Key: Char);
    procedure tdPonderadoSubKeyPress(Sender: TObject; var Key: Char);
    procedure cxgrdbtblvwGrid1DBTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxgrdbtblvwGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
    sfiltro: string;
    Paq: TstringList;
    sMenuP: string;
    IsOpen:Boolean;
  public
    { Public declarations }
  end;

var
  //utgrid: ticdbgrid;  //
  //utgrid2: ticdbgrid;
  //utgrid3: ticdbgrid;
  //utgrid4: ticdbgrid;
  //utgrid5: ticdbgrid;
  //utgrid6: ticdbgrid;
  //utgrid7: ticdbgrid;
 //CODIGO SORIANO Y JANIEL
  pWbs: string;
  Numero: Integer = 0;
  rAcumuladoTotal: real;
  banderaAlcance: boolean;
  frmActividadesAnexo2: TfrmActividadesAnexo2;
  sIdPlataforma: string;
  sPaquete: string;
  sFecha: string;
  FindeMes: Integer;
  sAlcancesArray: array[1..100] of string;
  dAlcancesArray: array[1..100] of Integer;
  iItemAlcancesArray: Integer;
  sFiltro: string;
  SavePlace: TBookmark;
  sProceso: string;
  zDetallePartida: tzQuery;
  tdAvance: tCurrencyEdit;

  WbsAnt, ActividadAnt, AnexoAnt : string;
  bandera: byte;
  MiItem: string;
  NivelAnt: integer;

  //Calculos.  PU
  CostoRecursoMN,
  CostoRecursoDLL,
  CantidadRecurso,
  CantidadRecursoOld: double;
  Wbs, Estado: string;
  CantidadAnexo: double;
  TipoExplosion: string;
  iFila: integer;
  sPaquete_cuad: string;
  dCantidad_cuad: double;
  sMedidaPU: string;

  {Datos de Configuraicon}
  c_dCostoDirecto,
  c_dCostoIndirectos,
  c_dFinanciamiento,
  c_dUtilidad,
  c_dCargosAdicionales,
  c_dCargosAdicionales2,
  c_dCargosAdicionales3: double;
  c_sSimboloRend: string;

  BotonPermiso: TBotonesPermisos;
  BotonPermiso1: TBotonesPermisos;
  BotonPermiso2: TBotonesPermisos;
  BotonPermiso3: TBotonesPermisos;
  BotonPermiso4: TBotonesPermisos;
  BotonPermiso5: TBotonesPermisos;
  BotonPermiso6: TBotonesPermisos;
  BotonPermiso7: TBotonesPermisos;

  //Exporta elementos a Excel..
  Excel, Libro, Hoja: Variant;
  Ocultar            : array[1..5, 1..2] of string ;

  zPaquetePersonal, zPaqueteHerramienta, zPaqueteBasico: TZReadOnlyQuery;
  iFaseMaximo : integer;
  sOpcionSubactividad : string;

implementation

uses frm_comentariosxanexo, frm_GraficaGerencialDX,
  UnitValidaTexto, frm_graficaexplosion, frm_paquetesdepersonal,
  frm_paquetesdeherramienta, frm_paquetesdebasicos, Frm_ProgramacionPartidasCia;

{$R *.dfm}

type

  TCursor = class
    Posicion: TPoint;
  end;

  TRegistro = class
    sTipoActividad: string;
    sWbs: string;
    dFechaInicio,
      dFechaFinal: TDateTime;
    iColor: Integer;
  end;

var
    //Grafica: TGrafica;
  Info: TScrollInfo;
  Cta, AltoB: Integer;
  Dimension: TRect;
  OldWbs, fWbs, Respaldo: string;
  Fecha: TDate;
  r, g, b,
    ri, gi, bi,
    rf, gf, bf, Y: Integer;
  pr, pg, pb: Double;
  Puntos: array[0..3] of TPoint;
  ValorAnt: Extended;
     //Matriz de colores
  Colores: array[1..10, 1..2] of integer;

procedure TfrmActividadesAnexo2.zProcCancelaInsert(DataSet: TDataSet);
begin
  abort
end;

function IsDate(ADate: string): Boolean;
var
  Dummy: TDateTime;
begin
  IsDate := TryStrToDate(ADate, Dummy);
end;

procedure PCAbsoluto(Zeo: TZQuery; Camp: string);
begin
  if Zeo.FieldValues[Camp] < 0 then
    Zeo.FieldValues[Camp] := Zeo.FieldValues[Camp] * -1;
end;

procedure TfrmActividadesAnexo2.mostrarTodos;
begin
   ActividadesxAnexo.Active := False;
   ActividadesxAnexo.SQL.Clear;
   ActividadesxAnexo.SQL.Add('Select *, SubStr(mDescripcion, 1, 255) as sDescripcion from actividadesxanexo '+
                            'Where sContrato = :contrato And sIdConvenio = :Convenio ');

   if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'Si' then
      ActividadesxAnexo.SQL.Add(' order by iItemOrden ')
   else
      ActividadesxAnexo.SQL.Add(' Order By mysql.udf_NaturalSortFormat(swbs,:Tam,:Separador)');
   ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString;
   ActividadesxAnexo.Params.ParamByName('Contrato').Value := Global_Contrato;
   ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString;
   ActividadesxAnexo.Params.ParamByName('Convenio').Value    := Global_Convenio;

   if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'No' then
   begin
       ActividadesxAnexo.ParamByName('tam').AsInteger      := Global_TamOrden;
       ActividadesxAnexo.ParamByName('separador').AsString := Global_SepOrden;
   end;

   ActividadesxAnexo.Open;
end;

procedure TfrmActividadesAnexo2.FormShow(Sender: TObject);
begin
  sMenuP := stMenu;
  BotonPermiso := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cAnexo', PopupPrincipal);
  BotonPermiso2 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cAnexo', Personal);
  BotonPermiso3 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cAnexo', equipos);
  BotonPermiso4 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cAnexo', herramientas);
  BotonPermiso5 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cAnexo', inventario);
  BotonPermiso6 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cAnexo', basicos);
  BotonPermiso7 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cAnexo', MenuDos);
  sfiltro := '';
  //UtGrid := TicdbGrid.create(grid_actividades);
  //UtGrid2 := TicdbGrid.create(grid_personal);
  //UtGrid3 := TicdbGrid.create(grid_herramientas);
  //UtGrid4 := TicdbGrid.create(grid_basicos);
  //UtGrid5 := TicdbGrid.create(grid_inventario);
 // UtGrid6 := TicdbGrid.create(grid_equipos);

   {Definimos colores...}
  colores[1, 1] := 3;
  colores[2, 1] := 5;
  colores[3, 1] := 6;
  colores[4, 1] := 8;
  colores[5, 1] := 10;
  colores[6, 1] := 11;
  colores[7, 1] := 12;
  colores[8, 1] := 13;
  colores[9, 1] := 14;
  colores[10, 1] := 15;

    {Colocamor color texto..}
  colores[1, 2] := 1;
  colores[2, 2] := 1;
  colores[3, 2] := 0;
  colores[4, 2] := 0;
  colores[5, 2] := 0;
  colores[6, 2] := 1;
  colores[7, 2] := 1;
  colores[8, 2] := 1;
  colores[9, 2] := 1;
  colores[10, 2] := 0;

  banderaAlcance := true;

  connection.configuracion.Refresh;
  OpcButton := '';
  sPaquete := '';

  zPaquetePersonal := TZReadOnlyQuery.Create(self);
  zPaquetePersonal.Connection := connection.zConnection;

  zPaqueteHerramienta := TZReadOnlyQuery.Create(self);
  zPaqueteHerramienta.Connection := connection.zConnection;

  zPaqueteBasico := TZReadOnlyQuery.Create(self);
  zPaqueteBasico.Connection := connection.zConnection;

  frmBarra1.btnCancel.Click;
    // Generar el dataset espejo de ActividadesxAnexo
  roqAnexo.Active := False;
  roqAnexo.SQL.Text := ActividadesxAnexo.SQL.Text;
  roqAnexo.ParamByName('Contrato').AsString := Global_Contrato;
  roqAnexo.ParamByName('Convenio').AsString := Global_Convenio;
  if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'No' then
  begin
    roqAnexo.ParamByName('tam').AsInteger := Global_TamOrden;
    roqAnexo.ParamByName('separador').AsString := Global_SepOrden;
  end;
  roqAnexo.Open;

  if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'Si' then
       ActividadesxAnexo.SQL.Text := 'Select *, SubStr(mDescripcion, 1, 255) as sDescripcion from actividadesxanexo ' +
                        'Where sContrato = :contrato And sIdConvenio = :Convenio ' +
                        'Order By iitemorden'
    else
       ActividadesxAnexo.SQL.Text := 'Select *, SubStr(mDescripcion, 1, 255) as sDescripcion from actividadesxanexo '+
                                     'Where sContrato = :contrato And sIdConvenio = :Convenio '+
                                     'Order By mysql.udf_NaturalSortFormat(swbs,:Tam,:Separador) ';
    ActividadesxAnexo.Active := False;
    ActividadesxAnexo.Params.ParamByName('Contrato').DataType := ftString;
    ActividadesxAnexo.Params.ParamByName('Contrato').Value    := Global_Contrato;
    ActividadesxAnexo.Params.ParamByName('Convenio').DataType := ftString;
    ActividadesxAnexo.Params.ParamByName('Convenio').Value    := Global_Convenio;

    if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'No' then
    begin
       ActividadesxAnexo.ParamByName('tam').AsInteger         := Global_TamOrden;
       ActividadesxAnexo.ParamByName('separador').AsString    := Global_SepOrden;
    end;
    ActividadesxAnexo.Open;

  Grid_Actividades.SetFocus;

  ActualizaSentencias;

  roqAnexo.First;
  mdGrafica.EmptyTable;
  mdGrafica.Open;

  roqAnexo.First;
    // de aqui en adelante.. nuevamente . iv@n..
  if connection.configuracion.FieldValues['sExplosion'] = 'Recursos por Concepto/Partida' then
    TipoExplosion := 'recursosanexo'
  else
    TipoExplosion := 'recursosanexosnuevos';
  IsOpen:=False;
  NxPCAnexo.ActivePageIndex := 0;
  IsOpen:=True;
  BotonPermiso.permisosBotones(frmBarra1);
  BotonPermiso.permisosBotones3(btnAdd, btnEdit, btnDelete, btnPrinter);
end;

procedure TfrmActividadesAnexo2.tsNumeroActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tsMedida.SetFocus
end;

procedure TfrmActividadesAnexo2.tdFechaInicioKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 then
    tdDuracion.SetFocus
end;

procedure TfrmActividadesAnexo2.tdFechaInicioSubEnter(Sender: TObject);
begin
     tdFechaInicioSub.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdFechaInicioSubExit(Sender: TObject);
begin
     tdFechaInicioSub.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tdMontoMNChange(Sender: TObject);
begin
  tdbeditchangef(tdMontoMN, 'Total MN');
end;

procedure TfrmActividadesAnexo2.tdMontoMNEnter(Sender: TObject);
begin
  tdMontoMN.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdMontoMNExit(Sender: TObject);
begin
  tdMontoMN.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tdMontoMNKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tdMontoMN, key) then
    key := #0;

  if key = #13 then
    tdMontoDll.SetFocus;
end;

procedure TfrmActividadesAnexo2.tdDuracionKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if not keyFiltroTdbedit(tdDuracion, key) then
//    key := #0;
  if key = #13 then
    tdFechaFinal.SetFocus
end;

procedure TfrmActividadesAnexo2.tdDuracionSubEnter(Sender: TObject);
begin
    tdDuracionSub.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdDuracionSubExit(Sender: TObject);
begin
    tdDuracionSub.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tdDuracionSubKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       cmdAceptar.SetFocus;
end;

procedure TfrmActividadesAnexo2.tdFechaFinalKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 then
    tlCalcula.SetFocus
end;

procedure TfrmActividadesAnexo2.tdFechaFinalSubEnter(Sender: TObject);
begin
     tdFechaFinalSub.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdFechaFinalSubExit(Sender: TObject);
begin
    tdFechaFinalSub.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tdPonderadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTdbedit(tdPonderado, key) then
    key := #0;
  if key = #13 then
    tlExtraordinario.SetFocus
end;

procedure TfrmActividadesAnexo2.tdPonderadoSubEnter(Sender: TObject);
begin
     tdPonderadoSub.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdPonderadoSubExit(Sender: TObject);
begin
     tdPonderadoSub.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tdPonderadoSubKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
      tsSubActividad.SetFocus;
end;

procedure TfrmActividadesAnexo2.tsIdPlataformaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tdCantidadAnexo.SetFocus
end;

procedure TfrmActividadesAnexo2.frmBarra1btnAddClick(Sender: TObject);
begin
  //activapop(frmActividadesAnexo2, popupprincipal);
  Insertar1.Enabled := False;
  Editar1.Enabled := False;
  Registrar1.Enabled := True;
  Can1.Enabled := True;
  Eliminar1.Enabled := False;
  Refresh1.Enabled := False;
  Salir1.Enabled := False;
  frmBarra1.btnAddClick(Sender);
  btnAdd.Enabled := False;
  btnEdit.Enabled := False;
  btnDelete.Enabled := False;
  btnPost.Enabled := True;
  btnCancel.Enabled := True;
  NxPCAnexo.ActivePageIndex := 0;
  chkItemOrden.Checked := true;
  connection.zConnection.StartTransaction;
  ActividadesxAnexo.Append;
  ActividadesxAnexo.FieldValues['sContrato'] := global_contrato;
  ActividadesxAnexo.FieldValues['sIdConvenio'] := global_convenio;
  ActividadesxAnexo.FieldValues['sEspecificacion'] := '';
  ActividadesxAnexo.FieldValues['sIdFase'] := '';
  ActividadesxAnexo.FieldValues['sAnexo'] := '';
  ActividadesxAnexo.FieldValues['sActividadAnterior'] := '';
  ActividadesxAnexo.FieldValues['sMedida'] := 'PZA';
  ActividadesxAnexo.FieldValues['lCalculo'] := 'Si';
  ActividadesxAnexo.FieldValues['lExtraordinario'] := 'No';
  ActividadesxAnexo.FieldValues['dDuracion'] := 1;
  ActividadesxAnexo.FieldValues['sWBSAnterior'] := sPaquete;
  tsPaquete.KeyValue := sPaquete;
  ActividadesxAnexo.FieldValues['dFechaInicio'] := Date;
  ActividadesxAnexo.FieldValues['dFechaFinal'] := Date;
  ActividadesxAnexo.FieldValues['dCantidadAnexo'] := 0;
  ActividadesxAnexo.FieldValues['dCostoMN'] := 0;
  ActividadesxAnexo.FieldValues['dCostoDLL'] := 0;
  ActividadesxAnexo.FieldValues['dVentaMN'] := 0;
  ActividadesxAnexo.FieldValues['dVentaDLL'] := 0;
  ActividadesxAnexo.FieldValues['dCargado'] := 0;
  ActividadesxAnexo.FieldValues['dInstalado'] := 0;
  ActividadesxAnexo.FieldValues['dExcedente'] := 0;
  ActividadesxAnexo.FieldValues['sSimbolo'] := '';
  ActividadesxAnexo.FieldValues['sTipoAnexo'] := 'ADM';
  case tiColores.ItemIndex of
    0: tiColor.ItemIndex := 0;
    1: tiColor.ItemIndex := 8;
    2: tiColor.ItemIndex := 9;
    3: tiColor.ItemIndex := 11;
    4: tiColor.ItemIndex := 10;
    5: tiColor.ItemIndex := 11;
    6: tiColor.ItemIndex := 13;
    7: tiColor.ItemIndex := 15;
    8: tiColor.ItemIndex := 14;
    9: tiColor.ItemIndex := 2;
    10: tiColor.ItemIndex := 3;
    11: tiColor.ItemIndex := 5;
    12: tiColor.ItemIndex := 4;
    13: tiColor.ItemIndex := 6;
    14: tiColor.ItemIndex := 7;
    15: tiColor.ItemIndex := 1;
  end;
  Grid_actividades.Enabled := False;
  tNewGroupBox1.PopupMenu := popupPrincipal;
  ActivaPopMenu(false);
  tsPaquete.SetFocus;
  BotonPermiso.permisosBotones(nil);
  BotonPermiso.permisosBotones3(btnAdd, btnEdit, btnDelete, btnPrinter);
end;

procedure TfrmActividadesAnexo2.frmBarra1btnEditClick(Sender: TObject);
begin
  //activapop(frmActividadesAnexo2, popupprincipal);
  if Actividadesxanexo.RecordCount>0 then
  begin
    Insertar1.Enabled := False;
    Editar1.Enabled := False;
    Registrar1.Enabled := True;
    Can1.Enabled := True;
    Eliminar1.Enabled := False;
    Refresh1.Enabled := False;
    Salir1.Enabled := False;
    frmBarra1.btnEditClick(Sender);
    btnAdd.Enabled := False;
    btnEdit.Enabled := False;
    btnDelete.Enabled := False;
    btnPost.Enabled := True;
    btnCancel.Enabled := True;
    chkItemOrden.Checked := false;
    connection.zConnection.StartTransaction;
    NxPCAnexo.ActivePageIndex := 0;
   // Grid_Actividades.MultiSelect := False;
    try
      WbsAnt       := ActividadesxAnexo.FieldValues['sWbs'];
      ActividadAnt := ActividadesxAnexo.FieldValues['sNumeroActividad'];
      NivelAnt     := ActividadesxAnexo.FieldValues['iNivel'];
      AnexoAnt     := ActividadesxAnexo.FieldValues['sAnexo'];
      ActividadesxAnexo.Edit;
    except
      on e: exception do begin
        UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al editar registro', 0);
        frmBarra1.btnCancel.Click;
      end;
    end;
    tNewGroupBox1.PopupMenu := popupPrincipal;
    ActivaPopMenu(false);
    tsPaquete.SetFocus;
    BotonPermiso.permisosBotones(nil);
    BotonPermiso.permisosBotones3(btnAdd, btnEdit, btnDelete, btnPrinter);
  end;
end;

//****************************BRITO 26/11/10************************************
//actualiza los valores wbs, wbsContrato y descripcion de las tablas
//actividadesxorden, bitacoradeactividades, estimacionxpartida, bitacoradealcances, avancesxactividad y actividadesxestimacion
//a los nuevos valores del registro recien editado

function TfrmActividadesAnexo2.actualizarTablas(sWbsOrig, sNumeroActividadOrig, sidfaseOrig: string): boolean;

  procedure prepararConsulta(sSQL: string);
  begin
    Connection.zCommand.Active := False;
    Connection.zCommand.Filtered := False;
    Connection.zCommand.SQL.Clear;
    Connection.zCommand.SQL.Add(sSQL);
    Connection.zCommand.ParamByName('contrato').Value := global_contrato;
    Connection.zCommand.ParamByName('convenio').Value := global_convenio;
  end;

var
  sSQL: string;
begin
  result := true;

  //tabla actividadesxorden
  sSQL :=
    'UPDATE actividadesxorden SET ' + //snumeroactividad
  //'sWbs = :wbs, '+
  'sWbsContrato = :wbsContrato, ' +
    'mDescripcion = :descripcion, ' +
    'sidfase=:newFase ' +
    'WHERE sContrato = :contrato AND sIdConvenio = :convenio ' +
    'AND swbscontrato=:wbsAnterior and sNumeroActividad = :numeroActividadOrig ' +
    'AND sTipoActividad = "Actividad" and sidfase=:fase';
  prepararConsulta(sSQL);
  connection.zCommand.ParamByName('wbsanterior').Asstring := sWbsOrig;
  Connection.zCommand.ParamByName('wbsContrato').AsString := ActividadesxAnexo.Fieldbyname('sWbs').asstring;
  Connection.zCommand.ParamByName('descripcion').AsString := ActividadesxAnexo.Fieldbyname('mDescripcion').AsString;
  Connection.zCommand.ParamByName('newFase').AsString := ActividadesxAnexo.Fieldbyname('sidfase').AsString;
  Connection.zCommand.ParamByName('fase').Value := sidfaseOrig;
  Connection.zCommand.ParamByName('numeroActividadOrig').Value := sNumeroActividadOrig;
  try
    Connection.zCommand.ExecSQL;
  except
    result := false;
  end;

  //tabla bitacoradeactividades       //snumeroactividad
  if result then begin
    sSQL :=
      'UPDATE estimacionxpartida SET ' +
//    'sWbs = :wbs, '+
    'sWbsContrato = :wbsContrato ' +
      'WHERE sContrato = :contrato ' +
      'AND swbscontrato=:swbsanterior and sNumeroActividad = :numeroActividadOrig ';
    Connection.zCommand.active := false;
    Connection.zCommand.filtered := false;
    Connection.zCommand.SQL.Text := ssql;
    Connection.zCommand.ParamByName('swbsanterior').asstring := sWbsOrig;
    Connection.zCommand.ParamByName('wbsContrato').Asstring := ActividadesxAnexo.Fieldbyname('sWbs').asstring;
//    Connection.zCommand.ParamByName('descripcion').Value    := ActividadesxAnexo.FieldValues ['mDescripcion'] ;
    Connection.zCommand.ParamByName('numeroActividadOrig').Value := sNumeroActividadOrig;
    try
      Connection.zCommand.ExecSQL;
    except
      result := false;
    end;
  end;

  if result then begin //snumeroactividad
    sSQL :=
      'update bitacoradealcances ba ' +
      'inner join actividadesxorden ao ' +
      'on(ao.scontrato=ba.scontrato and ao.snumeroorden=ba.snumeroorden and ao.swbs=ba.swbs and ao.snumeroactividad=ba.snumeroactividad) ' +
      'inner join actividadesxanexo aa ' +
      'on(aa.scontrato=ao.scontrato and aa.sidconvenio=ao.sidconvenio and aa.swbs=ao.swbscontrato and aa.snumeroactividad=ao.snumeroactividad) ' +
      'set ba.mdescripcion=:descripcion ' +
      'where aa.scontrato=:contrato and aa.sidconvenio=:convenio and aa.swbs=:swbsnuevo and aa.snumeroactividad=:actividad ';

    prepararConsulta(sSQL);
    Connection.zCommand.ParamByName('swbsnuevo').asstring := ActividadesxAnexo.Fieldbyname('sWbs').asstring;
    Connection.zCommand.ParamByName('descripcion').Asstring := ActividadesxAnexo.Fieldbyname('mdescripcion').asstring;
    Connection.zCommand.ParamByName('actividad').asString := ActividadesxAnexo.Fieldbyname('snumeroactividad').asstring;
    try
      Connection.zCommand.ExecSQL;
    except
      result := false;
    end;
  end;


  if result then begin //snumeroactividad
    sSQL :=
      'update bitacoradeactividades ba ' +
      'inner join actividadesxorden ao ' +
      'on(ao.scontrato=ba.scontrato and ao.snumeroorden=ba.snumeroorden and ao.swbs=ba.swbs and ao.snumeroactividad=ba.snumeroactividad) ' +
      'inner join actividadesxanexo aa ' +
      'on(aa.scontrato=ao.scontrato and aa.sidconvenio=ao.sidconvenio and aa.swbs=ao.swbscontrato and aa.snumeroactividad=ao.snumeroactividad) ' +
      'set ba.mdescripcion=:descripcion ' +
      'where aa.scontrato=:contrato and aa.sidconvenio=:convenio and aa.swbs=:swbsnuevo and aa.snumeroactividad=:actividad ';

    prepararConsulta(sSQL);
    Connection.zCommand.ParamByName('swbsnuevo').asstring := ActividadesxAnexo.Fieldbyname('sWbs').asstring;
    Connection.zCommand.ParamByName('descripcion').Asstring := ActividadesxAnexo.Fieldbyname('mdescripcion').asstring;
    Connection.zCommand.ParamByName('actividad').asString := ActividadesxAnexo.Fieldbyname('snumeroactividad').asstring;
    try
      Connection.zCommand.ExecSQL;
    except
      result := false;
    end;
  end;

end;

procedure TfrmActividadesAnexo2.frmBarra1btnPostClick(Sender: TObject);
var
  lEdito: Boolean;
  sItemOrdenAnterior,
    ExtraePaquete,
    sItemOrdenAnterior_p,
    ExtraePaquete_p,
    NewWbs,
    sWbs_Paquetes: string;
  Q_Item,
    Q_Actualiza: TZReadonlyQuery;
  iNivel_p, NivelAct: integer;
  nombres, cadenas: TStringList;
  Refrescar, filtrarReg: Boolean;
begin
     Refrescar := false;
    //desactivapop(popupprincipal);
      {Validaciones de campos}
    nombres := TStringList.Create; cadenas := TStringList.Create;
    nombres.Add('Paquete');
    cadenas.Add(tsPaquete.Text);
    nombres.Add('Costo MN');
    cadenas.Add(tdCostoMN.Text);
    nombres.Add('Costo DLL');
    cadenas.Add(tdCostoDLL.Text);
    nombres.Add('Precio MN');
    cadenas.Add(tdVentaMN.Text);
    nombres.Add('Venta Dll');
    cadenas.Add(tdVentaDLL.Text);
    nombres.Add('Anexo');
    cadenas.Add(tsIdAnexo.Text);
    nombres.Add('Descripci�n');
    cadenas.Add(tmDescripcion.Text);
    if tsMedida.Text <> '' then
    begin
        nombres.Add('Medida');
        cadenas.Add(tsMedida.Text);
        nombres.Add('Fase');
        cadenas.Add(tsIdFase.Text);
    end;
    nombres.Add('Extraordinario?');
    cadenas.Add(tlExtraordinario.Text);
    nombres.Add('Cant Anexo');
    cadenas.Add(tdCantidadAnexo.Text);
    nombres.Add('Duracion');
    cadenas.Add(tdDuracion.Text);
    nombres.Add('Calcula Pond.?');
    cadenas.Add(tlCalcula.Text);
    nombres.Add('Ponderado');
    cadenas.Add(tdPonderado.Text);
    nombres.Add('Tipo PU/ADM');
    cadenas.Add(tsTipoAnexo.Text);

    if not validaTexto(nombres, cadenas, 'Concepto/Part.', tsNumeroActividad.Text) then
    begin
        MessageDlg(UnitValidaTexto.errorValidaTexto, mtInformation, [mbOk], 0);
        exit;
    end;

    if pos('_',tsItemOrden.Text) > 0 then
    begin
        MessageDlg('El ITem Orden est� incompleto!', mtInformation, [mbOk], 0);
        exit;
    end;
    {Continua insercion de datos..}

    //Verifica que la fecha final no sea menor que la fecha inicio
    if tdFechaFinal.Date < tdFechaInicio.Date then
    begin
        showmessage('la fecha final es menor a la fecha inicial');
        tdFechaFinal.SetFocus;
        exit;
    end;

    Q_Item := TZReadOnlyQuery.Create(self);
    Q_Item.Connection := connection.zConnection;

    Q_Actualiza := TZReadOnlyQuery.Create(self);
    Q_Actualiza.Connection := connection.zConnection;

    {Calculo de la Wbs.}
    tsMedida.SetFocus;
    tsIdAnexo.OnExit(sender);
    {Termina,,,}

    ActividadesxAnexo.FieldValues['dFechaInicio'] := tdfechainicio.date;
    ActividadesxAnexo.FieldValues['dFechaFinal'] := tdfechafinal.date;

    {Insertamos los datos..}
    //try
      {Validaciones..}
      if tmDescripcion.Text = '' then
        tmDescripcion.Text := 'INSERTE DESCRIPCION DEL CONCEPTO';

      if (ActividadesxAnexo.FieldValues['lExtraordinario'] = 'Si') and (ActividadesxAnexo.FieldValues['sIdFase'] = '') then
      begin
          messageDlg('Debe seleccionar una Fase o Anexo para la Partida Extraordinaria!', mtInformation, [mbOk], 0);
          tsIdFase.SetFocus;
          exit;
      end;

      if ActividadesxAnexo.State = dsInsert then
      begin
          {Ahota verificamos si es una partida o un paquete..}
          ActividadesxAnexo.FieldValues['iColor'] := tiColor.Text;
          if (ActividadesxAnexo.FieldByName('sMedida').IsNull) or (ActividadesxAnexo.FieldValues['sMedida'] = '') then
          begin
              ActividadesxAnexo.FieldValues['sTipoActividad'] := 'Paquete';
              ActividadesxAnexo.FieldValues['dVentaMN']       := 0;
              ActividadesxAnexo.FieldValues['dVentaDLL']      := 0;
              if (ActividadesxAnexo.FieldByName('dCantidadAnexo').IsNull) or (ActividadesxAnexo.FieldValues['dCantidadAnexo'] = 0) then
                 ActividadesxAnexo.FieldValues['dCantidadAnexo'] := 1;
              ActividadesxAnexo.FieldValues['sSimbolo'] := '+';
              sPaquete := ActividadesxAnexo.FieldValues['sWBS'];
              ActividadesxAnexo.FieldValues['sMedida'] := '';
          end
          else
          begin
              ActividadesxAnexo.FieldValues['sTipoActividad'] := 'Actividad';
              ActividadesxAnexo.FieldValues['sSimbolo'] := '';
              sPaquete := ActividadesxAnexo.FieldValues['sWBSAnterior'];
          end;
      end
      else
      begin
          if (tsMedida.text = '') and (tsMedida.text <> ActividadesxAnexo.FieldbyName('sMedida').AsString) then
          begin
              messagedlg('No se puede Convertir una Partida a Paquete Directamente.' + #13 + #10
                        + 'Verfifiquelo con el Administrador del Sistema', mtwarning, [mbok], 0);  exit;
          end;

          if (ActividadesxAnexo.FieldbyName('sMedida').AsString = '') and (tsMedida.text <> ActividadesxAnexo.FieldbyName('sMedida').AsString) then
          begin
              messagedlg('No se puede Convertir una Paquete a Partida Directamente.' + #13 + #10
                        + 'Verfifiquelo con el Administrador del Sistema', mtwarning, [mbok], 0);  exit;
          end;
      end;
      ActividadesxAnexo.FieldValues['dDuracion'] := DaysBetween(ActividadesxAnexo.FieldValues['dFechaFinal'], ActividadesxAnexo.FieldValues['dFechaInicio']) + 1;

      {Antes de guardar el item buscamos a que paquete le pertenece..}
      Q_Item.Active := False;
      Q_Item.Filtered := False;
      Q_Item.SQL.Clear;
      Q_Item.SQL.Add('select iItemOrden, iNivel from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sWbs =:Wbs ');
      Q_Item.Params.ParamByName('Contrato').AsString := global_contrato;
      Q_Item.Params.ParamByName('Convenio').AsString := global_convenio;
      if Paquetes.FieldValues['sWbs'] <> null then
         Q_Item.Params.ParamByName('Wbs').AsString := Paquetes.FieldValues['sWbs']
      else
         Q_Item.Params.ParamByName('Wbs').AsString := '';
      Q_Item.Open;

      if Q_Item.RecordCount > 0 then
         sItemOrdenAnterior := Q_Item.FieldValues['iItemOrden']
      else
         sItemOrdenAnterior := '';

      if Paquetes.FieldValues['sWbs'] <> null then
         ExtraePaquete := Paquetes.FieldValues['sWbs']
      else
         ExtraePaquete := '';

      if tsPaquete.KeyValue = Null then
      begin
          ActividadesxAnexo.FieldValues['iNivel']     := 0;
          ActividadesxAnexo.FieldValues['iItemOrden'] := '';
      end
      else
      begin
          ActividadesxAnexo.FieldValues['iNivel']     := Paquetes.FieldValues['iNivel'] + 1;
          if chkItemOrden.Checked then
             ActividadesxAnexo.FieldValues['iItemOrden'] := Paquetes.FieldValues['iItemOrden'];
      end;


      if ActividadesxAnexo.State = dsEdit then
      begin
          if chkItemOrden.Checked then
          begin
              {Ahora hacemos la edicion del registro...}
              ActividadesxAnexo.FieldValues['iItemOrden'] := sItemOrdenAnterior + sFnBuscaItem(ActividadesxAnexo.FieldValues['sNumeroActividad'],
               ExtraePaquete,
               sItemOrdenAnterior,
               ActividadesxAnexo.FieldValues['sTipoActividad'], '', 'actividadesxanexo',
               ActividadesxAnexo.FieldValues['iNivel'] + 1);
              sItemOrdenAnterior_p := ActividadesxAnexo.FieldValues['iItemOrden'];
              ExtraePaquete_p := ActividadesxAnexo.FieldValues['sWbs']; // es es el nuevo swbs
              iNivel_p := ActividadesxAnexo.FieldValues['iNivel'];
              Actividadesxanexo.Post;

              if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Paquete' then
              begin
                  NivelAct := iNivel_p - NivelAnt;
                   //snumeroactividad,insert(snumeroactividad,instr(snumeroactividad,'8.'),length('8.'),'9.'))
                  if Actividadesxanexo.FieldByName('snumeroactividad').AsString <> ActividadAnt then
                  begin
                      Q_Actualiza.Active := false;
                      Q_Actualiza.SQL.Text := 'update actividadesxanexo ' +
                                'set swbs=insert(swbs,1,length(concat(:swbsOr,".")),concat(:swbsNew,".")), swbsanterior=insert(swbsanterior,1,length(:swbsOr),:swbsnew), ' +
                                'snumeroactividad=insert(snumeroactividad,instr(snumeroactividad,:ActAn),length(:ActAn),:ActNu), ' +
                                'inivel=(inivel + :Level) ' +
                                'where scontrato=:contrato and sidconvenio=:convenio and ' +
                                'swbs like :swbslike';
                      Q_Actualiza.ParamByName('contrato').AsString := global_contrato;
                      Q_Actualiza.ParamByName('convenio').AsString := global_convenio;
                      Q_Actualiza.ParamByName('swbsOr').AsString := sPaquete;
                      Q_Actualiza.ParamByName('swbsnew').AsString := ExtraePaquete_p;
                      Q_Actualiza.ParamByName('swbslike').AsString := sPaquete + '.%';
                      Q_Actualiza.ParamByName('ActNu').AsString := Actividadesxanexo.FieldByName('snumeroactividad').AsString + '.';
                      Q_Actualiza.ParamByName('ActAn').AsString := ActividadAnt + '.';
                      Q_Actualiza.ParamByName('level').AsInteger := NivelAct;
                      try
                        Q_Actualiza.ExecSQL;
                        showmessage(inttostr(Q_Actualiza.RowsAffected));
                        refrescar := true;
                      except
                        on e: exception do
                        begin
                           messagedlg('Ocurrio un error al realizar esta operacion' + e.Message + e.ClassName, mterror, [mbok], 0);
                        end;
                      end;
                  end;
              end;
          end
          else
          begin
              {Se salvan los datos..}
              ActividadesxAnexo.Post;

              {Actualizamos Wbs..}
              BuscaWbs(WbsAnt, ActividadAnt, ActividadesxAnexo.FieldValues['sWbs'], ActividadesxAnexo.FieldValues['sNumeroActividad'],
              ActividadesxAnexo.FieldValues['sTipoActividad'], ActividadesxAnexo.FieldValues['mDescripcion'],
              ActividadesxAnexo.FieldValues['sMedida'], ActividadesxAnexo.FieldValues['dVentaMN'], ActividadesxAnexo.FieldValues['dVentaDLL'],
              ActividadesxAnexo.FieldValues['dCostoMN'], ActividadesxAnexo.FieldValues['dCostoDLL'],
              AnexoAnt, ActividadesxAnexo.FieldValues['sAnexo'],true);

          end;
          lEdito := True;
      end
      else
      begin
          if chkItemOrden.Checked then
          begin
              ActividadesxAnexo.FieldValues['iItemOrden'] := sItemOrdenAnterior + sFnBuscaItem(ActividadesxAnexo.FieldValues['sNumeroActividad'],
              ExtraePaquete,
              sItemOrdenAnterior,
              ActividadesxAnexo.FieldValues['sTipoActividad'], '', 'actividadesxanexo',
              ActividadesxAnexo.FieldValues['iNivel']);
          end;
          lEdito := False;

          {Se salvan los datos..}
           ActividadesxAnexo.Post;
      end;
    roqAnexo.Refresh;

    if lEdito then
      Kardex('Conceptos Generales', 'Edita  Registro Anexo', tsNumeroActividad.Text, ActividadesxAnexo.FieldValues['sTipoActividad'], '', '', '')
    else
      Kardex('Conceptos Generales', 'Crea   Registro Anexo', tsNumeroActividad.Text, ActividadesxAnexo.FieldValues['sTipoActividad'], '', '', '');
    connection.zConnection.Commit;

    SavePlace := TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.GetBookmark;
    filtrarReg := ActividadesxAnexo.Filtered;
    ActividadesxAnexo.Filtered := false;
    ActividadesxAnexo.Refresh;
    ActividadesxAnexo.Filtered := filtrarReg;
    try
      TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.GotoBookmark(SavePlace);
    Except
      TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.FreeBookmark(SavePlace);
    end;

    Paquetes.Active := False;
    Paquetes.Open;

    Q_Item.Destroy;
       // Q_Paquete.Destroy;
    Q_Actualiza.Destroy;

    if lEdito then
      ActivaPopMenu(True);

    Insertar1.Enabled := True;
    Editar1.Enabled := True;
    Registrar1.Enabled := False;
    Can1.Enabled := False;
    Eliminar1.Enabled := True;
    Refresh1.Enabled := True;
    Salir1.Enabled := True;
    frmBarra1.btnPostClick(Sender);

    if lEdito then
    begin
      btnAdd.Enabled := True;
      btnEdit.Enabled := True;
      btnDelete.Enabled := True;
      btnPost.Enabled := False;
      btnCancel.Enabled := False;
    end;

    Grid_actividades.Enabled := True;
    tNewGroupBox1.SetFocus;
    tsNumeroActividad.SetFocus;
        //Grid_actividades.Enabled := False;
    if lEdito then

//  except
//    on e: exception do begin
//      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al salvar registro', 0);
//      frmBarra1.btnCancel.Click;
//    end;
//  end;
  BotonPermiso.permisosBotones(nil);
  BotonPermiso.permisosBotones3(btnAdd, btnEdit, btnDelete, btnPrinter);
end;

procedure TfrmActividadesAnexo2.frmBarra1btnCancelClick(Sender: TObject);
begin
  //desactivapop(popupprincipal);
  ActividadesxAnexo.Cancel;
  Insertar1.Enabled := True;
  Editar1.Enabled := True;
  Registrar1.Enabled := False;
  Can1.Enabled := False;
  Eliminar1.Enabled := True;
  Refresh1.Enabled := True;
  Salir1.Enabled := True;
  frmBarra1.btnCancelClick(Sender);

  btnAdd.Enabled := True;
  btnEdit.Enabled := True;
  btnDelete.Enabled := True;
  btnPost.Enabled := False;
  btnCancel.Enabled := False;
  chkItemOrden.Checked := False;

  if connection.zConnection.InTransaction then
    connection.zConnection.Rollback;
  tNewGroupBox1.PopupMenu := nil;
  Grid_Actividades.Enabled := True;
  ActivaPopMenu(True);
  Grid_Actividades.SetFocus;
  BotonPermiso.permisosBotones(nil);
  BotonPermiso.permisosBotones3(btnAdd, btnEdit, btnDelete, btnPrinter);
end;

procedure TfrmActividadesAnexo2.frmBarra1btnDeleteClick(Sender: TObject);
var
  Actividad, TipoAct, cadena: string;
  total: integer;
  dPonderado: double;
begin
  if ActividadesxAnexo.RecordCount > 0 then
  begin
    if MessageDlg('�Desea eliminar ' + ActividadesxAnexo.FieldValues['sTipoActividad'] + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      tNewGroupBox1.Caption := 'Detalle de Conceptos';
      NxPCAnexo.ActivePageIndex := 0;

            {Buscamos si la partida o paquete ya fue reportada..}
      Actividad := ActividadesxAnexo.FieldValues['sNumeroActividad'];
      TipoAct := ActividadesxAnexo.FieldValues['sTipoActividad'];
      dPonderado := ActividadesxAnexo.FieldValues['dPonderado'];
      try
        if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
        begin
                     {Primero la partida..}
          cadena := AntesEliminarAnexo(ActividadesxAnexo.FieldValues['sNumeroActividad'], ActividadesxAnexo.FieldValues['sWbs'], ActividadesxAnexo.FieldValues['sTipoActividad']);
          if cadena <> '' then
          begin
            MessageDlg('No se puede Eliminar!. La Partida ' + ActividadesxAnexo.FieldValues['sNumeroActividad'] + ' se encuentra Registrada en:' + #13 + cadena, mtWarning, [mbOk], 0);
            exit;
          end;
        end
        else
        begin
                     {Ahora los paquetes..}
          cadena := AntesEliminarAnexo(ActividadesxAnexo.FieldValues['sNumeroActividad'], ActividadesxAnexo.FieldValues['sWbs'] + '.%', ActividadesxAnexo.FieldValues['sTipoActividad']);
          if cadena <> '' then
          begin
            MessageDlg('No se puede Eliminar!. El Paquete ' + ActividadesxAnexo.FieldValues['sNumeroActividad'] + ' contine Partidas registradas en: ' + #13 + cadena, mtWarning, [mbOk], 0);
            exit;
          end;
        end;

                //Eliminamos distribuciones...
        DistribucionesAnexo(ActividadesxAnexo.FieldValues['sWbs'], ActividadesxAnexo.FieldValues['sTipoActividad'], ActividadesxAnexo.FieldValues['iNivel']);

        if TipoAct = 'Actividad' then
        begin
          SavePlace := TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.GetBookmark;
          ActividadesxAnexo.Delete;
        end
        else
        begin
          Connection.zCommand.Active := False;
          Connection.zCommand.Filtered := False;
          Connection.zCommand.SQL.Clear;
          Connection.zCommand.SQL.Add('delete from actividadesxanexo Where sContrato = :contrato and sIdConvenio = :convenio and sWbs LIKE :wbs and iNivel > :Nivel ');
          connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
          connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
          connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
          connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
          connection.zCommand.Params.ParamByName('wbs').DataType := ftString;
          connection.zCommand.Params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'] + '.%';
          connection.zCommand.Params.ParamByName('Nivel').DataType := ftInteger;
          connection.zCommand.Params.ParamByName('Nivel').Value := ActividadesxAnexo.FieldValues['iNivel'];
          connection.zCommand.ExecSQL;
          SavePlace := TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.GetBookmark;
          ActividadesxAnexo.Delete;
        end;

                //Funcion elimina avances
        EliminaAvances('');

        ActividadesxAnexo.Refresh;
        try
          TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.GotoBookmark(SavePlace);
        except
        else
          TcxGridDBTableView(grid_actividades.ActiveView).DataController.DataSource.DataSet.FreeBookmark(SavePlace);
        end;
        Kardex('Conceptos Generales', 'Borra Registro Anexo', Actividad, TipoAct, '', '', '');

        if (dPonderado > 0) and (ActividadesxAnexo.RecordCount > 0) then
          messageDLG('Debe Ponderar los Conceptos del Catalogo de Anexos!', mtWarning, [mbOk], 0);
      except
        on e: exception do begin
          UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al eliminar registro', 0);
        end;
      end;
      Paquetes.Active := False;
      Paquetes.Open;
    end;
  end;
end;

procedure TfrmActividadesAnexo2.frmBarra1btnRefreshClick(Sender: TObject);
var
  sSelect: string;
  sMedidas: string;
  dMontoContrato: Currency;
begin
    //Inicia proceso de estructura del proyecto ...
  if ActividadesxAnexo.RecordCount > 0 then
  begin
    Paquetes.Active := False;
    Paquetes.Open;

    dMontoContrato := 0;
    Connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('Select sum(dCantidadAnexo * dVentaMN) as dMontoMN From actividadesxanexo ' +
      'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" group by sContrato');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
    Connection.QryBusca.Open;
    if Connection.QryBusca.RecordCount > 0 then
      dMontoContrato := Connection.QryBusca.FieldValues['dMontoMN'];

    connection.zCommand.Active := False;
    connection.zCommand.Filtered := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('Update convenios SET dMontoMN = :Monto ' +
      'Where sContrato = :Contrato And sIdConvenio = :Convenio');
    connection.zcommand.params.ParamByName('Contrato').DataType := ftString;
    connection.zcommand.params.ParamByName('Contrato').Value := global_contrato;
    connection.zcommand.params.ParamByName('Convenio').DataType := ftString;
    connection.zcommand.params.ParamByName('Convenio').Value := global_convenio;
    connection.zcommand.params.ParamByName('Monto').DataType := ftFloat;
    connection.zcommand.params.ParamByName('Monto').Value := dMontoContrato;
    Connection.zCommand.ExecSQL;
  end;

  sFiltro := '';

  connection.configuracion.Refresh;

  zFasesProyecto.Active := False;
  zFasesProyecto.Open;

  Anexos.Active := False;
  Anexos.Open;

  PartidasxAlcance.Refresh
end;

procedure TfrmActividadesAnexo2.frmBarra1btnExitClick(Sender: TObject);
begin

  Close;
end;

procedure TfrmActividadesAnexo2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ActividadesxAnexo.Cancel;
  //utgrid.Destroy;
  //utgrid2.Destroy;
  //utgrid3.Destroy;
  //utgrid4.Destroy;
  //utgrid5.Destroy;
  //utgrid6.Destroy;
  BotonPermiso.Free;
  if Assigned(BotonPermiso1) then
    BotonPermiso1.Free;
  BotonPermiso2.Free;
  BotonPermiso3.Free;
  BotonPermiso4.Free;
  BotonPermiso5.Free;
  BotonPermiso6.Free;
  action := cafree;
end;

procedure TfrmActividadesAnexo2.FormCreate(Sender: TObject);
var
  C: HCURSOR;
begin
  C := LoadCursor(0, IDC_HAND);
  if C <> 0 then Screen.Cursors[crHandPoint] := C;
  NxPCAnexo.ShowTabs := False;
  Paq := TstringList.Create;

  ActividadesxAnexo.Active := False;
  if connection.configuracion.FieldByName('lOrdenaItem').AsString = 'Si' then
  begin
    ActividadesxAnexo.SQL.Text := 'Select *, SubStr(mDescripcion, 1, 255) as sDescripcion from actividadesxanexo ' +
      'Where sContrato = :contrato And sIdConvenio = :Convenio ' +
      'Order By iitemorden';
  end;

end;

procedure TfrmActividadesAnexo2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if not (ActiveControl is TDBGrid) and not (ActiveControl is TDBMemo) then
    begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    end
    else
      if (ActiveControl is TDBGrid) then
        with TDBGrid(ActiveControl) do
          if selectedindex < (fieldcount - 1) then
            selectedindex := selectedindex + 1
          else
            selectedindex := 0;
end;

procedure TfrmActividadesAnexo2.FormPaint(Sender: TObject);
begin
  Grid_Actividades.Repaint;
end;

procedure TfrmActividadesAnexo2.tdDuracionExit(Sender: TObject);
begin
  if (ActividadesxAnexo.State = dsInsert) or (ActividadesxAnexo.State = dsEdit) then
    ActividadesxAnexo.FieldValues['dFechaFinal'] := ActividadesxAnexo.FieldValues['dFechaInicio'] + (ActividadesxAnexo.FieldValues['dDuracion'] - 1);
  tdDuracion.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.Insertar1Click(Sender: TObject);
begin
  frmBarra1.btnAdd.Click
end;

procedure TfrmActividadesAnexo2.InsertarCatalogodeMateriales1Click(
  Sender: TObject);
begin
  if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('delete from recursosanexosnuevos where sContrato =:Contrato and sWbs =:Wbs and sNumeroActividad =:Actividad ');
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
    connection.zCommand.ParamByName('Wbs').AsString := actividadesxanexo.FieldValues['sWbs'];
    connection.zCommand.ParamByName('Actividad').AsString := actividadesxanexo.FieldValues['sNumeroActividad'];
    connection.zCommand.ExecSQL;

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select * from insumos where sContrato =:Contrato');
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
    connection.zCommand.Open;

    while not connection.zCommand.Eof do
    begin
      try
        connection.QryBusca.Active := False;
        connection.QryBusca.SQL.Clear;
        connection.QryBusca.SQL.Add('Insert into recursosanexosnuevos (sContrato, sWbs, sNumeroActividad, sIdInsumo, dCantidad, dCostoMN, dCostoDLL, dCostoTotalMN, dCostoTotalDLL) ' +
          ' values (:Contrato, :Wbs, :Actividad, :Insumo, :Cantidad, :CostoMN, 0,0,0)');
        connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca.ParamByName('Wbs').AsString := actividadesxanexo.FieldValues['sWbs'];
        connection.QryBusca.ParamByName('Actividad').AsString := actividadesxanexo.FieldValues['sNumeroActividad'];
        connection.QryBusca.ParamByName('Insumo').AsString := connection.zCommand.FieldValues['sIdInsumo'];
        connection.QryBusca.ParamByName('Cantidad').AsString := connection.zCommand.FieldValues['dCantidad'];
        connection.QryBusca.ParamByName('CostoMN').AsString := connection.zCommand.FieldValues['dVentaMN'];
        connection.QryBusca.ExecSQL;
      except
      end;
      connection.zCommand.Next;
    end;
    messageDLG('Proceso Temrinado con Exito!', mtInformation, [mbOk], 0);
    inventario.Refresh;
  end;
end;

procedure TfrmActividadesAnexo2.Editar1Click(Sender: TObject);
begin
  frmBarra1.btnEdit.Click
end;

procedure TfrmActividadesAnexo2.Registrar1Click(Sender: TObject);
begin
  frmBarra1.btnPost.Click
end;

procedure TfrmActividadesAnexo2.Can1Click(Sender: TObject);
begin
  frmBarra1.btnCancel.Click
end;

procedure TfrmActividadesAnexo2.chkFiltroTodoClick(Sender: TObject);
begin
  mostrarTodos;
end;

procedure TfrmActividadesAnexo2.cmdAceptarClick(Sender: TObject);
var
   cadenamensaje : string;
begin
    //Primero revisamos que no existan datos vacios,
    if tsSubactividad.Text = '' then
       cadenamensaje := #13 +' SubActividad';
    if tmDescripcionSub.Text = '' then
       cadenamensaje := #13 +' Descripcion SubActividad';
    if tsMedidaSub.Text = ''then
       cadenamensaje := #13 +' Medida';
    if cadenamensaje <> '' then
    begin
        messageDLG('Existen datos vacios! '+ cadenamensaje, mtInformation, [mbOk], 0);
        exit;
    end;

    if sOpcionSubactividad = 'New' then
    begin
        //Insertamos la subactividad...
        connection.QryBusca.Active := False;
        connection.QryBusca.Sql.Clear;
        connection.QryBusca.Sql.Add('insert into alcancesxactividad (sContrato, sIdConvenio, sWbs, sNumeroActividad, iFase, sNumeroActividadSub, iNivel, sSimbolo, sTipoActividad, sDescripcion, sMedida, dCantidad, dPonderado, dDuracion, dFechaInicio, dFechaFinal, dVentaMN, dVentaDLL) ' +
                                    'values (:contrato, :convenio, :wbs, :actividad, :fase, :actividad_sub, :nivel, :simbolo, :tipoactividad, :descripcion, :medida, :cantidad, :ponderado, :duracion, :fechaI, :fechaF, :ventaMN, :ventaDLL )');
        connection.QryBusca.Params.ParamByName('Contrato').DataType      := ftString;
        connection.QryBusca.Params.ParamByName('Contrato').Value         := global_contrato;
        connection.QryBusca.Params.ParamByName('Convenio').DataType      := ftString;
        connection.QryBusca.Params.ParamByName('Convenio').Value         := global_convenio;
        connection.QryBusca.Params.ParamByName('Actividad').DataType     := ftString;
        connection.QryBusca.Params.ParamByName('Actividad').Value        := ActividadesxAnexo.FieldValues['sNumeroActividad'];
        connection.QryBusca.Params.ParamByName('wbs').DataType           := ftString;
        connection.QryBusca.Params.ParamByName('wbs').Value              := ActividadesxAnexo.FieldValues['sWbs'];
        connection.QryBusca.Params.ParamByName('fase').DataType          := ftInteger;
        connection.QryBusca.Params.ParamByName('fase').Value             := iFaseMaximo;
        connection.QryBusca.Params.ParamByName('actividad_sub').DataType := ftString;
        connection.QryBusca.Params.ParamByName('actividad_sub').Value    := tsSubactividad.Text;
        connection.QryBusca.Params.ParamByName('nivel').DataType         := ftInteger;
        connection.QryBusca.Params.ParamByName('nivel').Value            := 0;
        connection.QryBusca.Params.ParamByName('simbolo').DataType       := ftString;
        if tsTipo.Text = 'Paquete' then
           connection.QryBusca.Params.ParamByName('simbolo').Value       := '-'
        else
           connection.QryBusca.Params.ParamByName('simbolo').Value       := '';
        connection.QryBusca.Params.ParamByName('tipoactividad').DataType := ftString;
        connection.QryBusca.Params.ParamByName('tipoactividad').Value    := tsTipo.Text;
        connection.QryBusca.Params.ParamByName('descripcion').DataType   := ftString;
        connection.QryBusca.Params.ParamByName('descripcion').Value      := tmDescripcionSub.Text;
        connection.QryBusca.Params.ParamByName('medida').DataType        := ftString;
        connection.QryBusca.Params.ParamByName('medida').Value           := tsMedidaSub.Text;
        connection.QryBusca.Params.ParamByName('cantidad').DataType      := ftFloat;
        connection.QryBusca.Params.ParamByName('cantidad').Value         := tdCantidadSub.Value;
        connection.QryBusca.Params.ParamByName('duracion').DataType      := ftFloat;
        connection.QryBusca.Params.ParamByName('duracion').Value         := tdDuracionSub.Value;
        connection.QryBusca.Params.ParamByName('ponderado').DataType     := ftFloat;
        connection.QryBusca.Params.ParamByName('ponderado').Value        := tdPonderadoSub.Value;
        connection.QryBusca.Params.ParamByName('ventaMN').DataType       := ftFloat;
        connection.QryBusca.Params.ParamByName('ventaMN').Value          := tdVentaMNSub.Value;
        connection.QryBusca.Params.ParamByName('ventaDLL').DataType      := ftFloat;
        connection.QryBusca.Params.ParamByName('ventaDLL').Value         := tdVentaDLLSub.Value;
        connection.QryBusca.Params.ParamByName('fechaI').DataType        := ftDate;
        connection.QryBusca.Params.ParamByName('fechaI').Value           := tdFechaInicio.Date;
        connection.QryBusca.Params.ParamByName('fechaF').DataType        := ftDate;
        connection.QryBusca.Params.ParamByName('fechaF').Value           := tdFechaFinal.Date;
        connection.QryBusca.ExecSQL;

        tsSubactividad.SetFocus;
        AntesInsertarSubactividad;
        tmDescripcionSub.SetFocus;
    end;

    if sOpcionSubactividad = 'Edit' then
    begin
        //Insertamos la subactividad...
        connection.QryBusca.Active := False;
        connection.QryBusca.Sql.Clear;
        connection.QryBusca.Sql.Add('Update alcancesxactividad set sNumeroActividadSub =:actividad_sub, sSimbolo =:simbolo, sTipoActividad =:tipoactividad, sDescripcion =:descripcion, sMedida =:medida, dCantidad =:cantidad, dPonderado =:ponderado, dDuracion =:duracion, ' +
                                    'dFechaInicio =:fechaI, dFechaFinal =:fechaF, dVentaMN =:ventaMN, dVentaDLL =:ventaDLL '+
                                    'Where sContrato = :Contrato and sIdConvenio =:Convenio And sWbs=:wbs and sNumeroActividad = :Actividad and iFase =:Fase');
        connection.QryBusca.Params.ParamByName('Contrato').DataType      := ftString;
        connection.QryBusca.Params.ParamByName('Contrato').Value         := global_contrato;
        connection.QryBusca.Params.ParamByName('Convenio').DataType      := ftString;
        connection.QryBusca.Params.ParamByName('Convenio').Value         := global_convenio;
        connection.QryBusca.Params.ParamByName('wbs').DataType           := ftString;
        connection.QryBusca.Params.ParamByName('wbs').Value              := ActividadesxAnexo.FieldValues['sWbs'];
        connection.QryBusca.Params.ParamByName('Actividad').DataType     := ftString;
        connection.QryBusca.Params.ParamByName('Actividad').Value        := ActividadesxAnexo.FieldValues['sNumeroActividad'];
        connection.QryBusca.Params.ParamByName('fase').DataType          := ftInteger;
        connection.QryBusca.Params.ParamByName('fase').Value             := subactividades.FieldValues['iFase'];
        connection.QryBusca.Params.ParamByName('actividad_sub').DataType := ftString;
        connection.QryBusca.Params.ParamByName('actividad_sub').Value    := tsSubactividad.Text;
        connection.QryBusca.Params.ParamByName('simbolo').DataType       := ftString;
        if tsTipo.Text = 'Paquete' then
           connection.QryBusca.Params.ParamByName('simbolo').Value       := '-'
        else
           connection.QryBusca.Params.ParamByName('simbolo').Value       := '';
        connection.QryBusca.Params.ParamByName('tipoactividad').DataType := ftString;
        connection.QryBusca.Params.ParamByName('tipoactividad').Value    := tsTipo.Text;
        connection.QryBusca.Params.ParamByName('descripcion').DataType   := ftString;
        connection.QryBusca.Params.ParamByName('descripcion').Value      := tmDescripcionSub.Text;
        connection.QryBusca.Params.ParamByName('medida').DataType        := ftString;
        connection.QryBusca.Params.ParamByName('medida').Value           := tsMedidaSub.Text;
        connection.QryBusca.Params.ParamByName('cantidad').DataType      := ftFloat;
        connection.QryBusca.Params.ParamByName('cantidad').Value         := tdCantidadSub.Value;
        connection.QryBusca.Params.ParamByName('duracion').DataType      := ftFloat;
        connection.QryBusca.Params.ParamByName('duracion').Value         := tdDuracionSub.Value;
        connection.QryBusca.Params.ParamByName('ponderado').DataType     := ftFloat;
        connection.QryBusca.Params.ParamByName('ponderado').Value        := tdPonderadoSub.Value;
        connection.QryBusca.Params.ParamByName('ventaMN').DataType       := ftFloat;
        connection.QryBusca.Params.ParamByName('ventaMN').Value          := tdVentaMNSub.Value;
        connection.QryBusca.Params.ParamByName('ventaDLL').DataType      := ftFloat;
        connection.QryBusca.Params.ParamByName('ventaDLL').Value         := tdVentaDLLSub.Value;
        connection.QryBusca.Params.ParamByName('fechaI').DataType        := ftDate;
        connection.QryBusca.Params.ParamByName('fechaI').Value           := tdFechaInicio.Date;
        connection.QryBusca.Params.ParamByName('fechaF').DataType        := ftDate;
        connection.QryBusca.Params.ParamByName('fechaF').Value           := tdFechaFinal.Date;
        connection.QryBusca.ExecSQL;

        PanelSubactividad.Visible := False;
    end;
    subactividades.Refresh;

end;

procedure TfrmActividadesAnexo2.cmdCancelarClick(Sender: TObject);
begin
    PanelSubactividad.Visible := False;
end;

procedure TfrmActividadesAnexo2.Eliminar1Click(Sender: TObject);
begin
  frmBarra1btnDeleteClick(Sender);
end;

procedure TfrmActividadesAnexo2.EliminarRegistro1Click(Sender: TObject);
begin
  if NxPCAnexo.ActivePageIndex = 2 then
    Personal.Delete;
  if NxPCAnexo.ActivePageIndex = 3 then
    Equipos.Delete;
  if NxPCAnexo.ActivePageIndex = 4 then
    herramientas.Delete;
  if NxPCAnexo.ActivePageIndex = 5 then
    inventario.Delete;
  if NxPCAnexo.ActivePageIndex = 6 then
    basicos.Delete;
end;

procedure TfrmActividadesAnexo2.EliminarTodoslosRegistros1Click(
  Sender: TObject);
begin
  if NxPCAnexo.ActivePageIndex = 2 then
  begin
    while not personal.Eof do
    begin
      personal.Delete;
      personal.Next;
    end;
  end;

  if NxPCAnexo.ActivePageIndex = 3 then
  begin
    while not equipos.Eof do
    begin
      equipos.Delete;
      equipos.Next;
    end;
  end;

  if NxPCAnexo.ActivePageIndex = 4 then
  begin
    while not herramientas.Eof do
    begin
      herramientas.Delete;
      herramientas.Next;
    end;
  end;

  if NxPCAnexo.ActivePageIndex = 6 then
  begin
    while not basicos.Eof do
    begin
      basicos.Delete;
      basicos.Next;
    end;
  end;

  if NxPCAnexo.ActivePageIndex = 5 then
  begin
    while not inventario.Eof do
    begin
      inventario.Delete;
      inventario.Next;
    end;
  end;
end;

procedure TfrmActividadesAnexo2.Salir1Click(Sender: TObject);
begin
  frmBarra1.btnExit.Click
end;

procedure TfrmActividadesAnexo2.subactividadesAfterInsert(DataSet: TDataSet);
begin
    AntesInsertarSubActividad;
    sOpcionSubactividad := 'New';
end;

procedure TfrmActividadesAnexo2.tsMedidaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tdCantidadAnexo.SetFocus;
end;

procedure TfrmActividadesAnexo2.tsMedidaSubEnter(Sender: TObject);
begin
    tsMedidaSub.color  := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tsMedidaSubExit(Sender: TObject);
begin
    tsMedidaSub.color  := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tsMedidaSubKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
       tdCantidadSub.SetFocus;
end;

procedure TfrmActividadesAnexo2.tdCantidadAnexoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxDBCalcEdit(tdCantidadAnexo, key) then
    key := #0;
  if key = #13 then
    tsEspecificacion.SetFocus
end;

procedure TfrmActividadesAnexo2.tdCantidadSubEnter(Sender: TObject);
begin
    tdCantidadSub.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdCantidadSubExit(Sender: TObject);
begin
    tdCantidadSub.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tdCantidadSubKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
       tdPonderadoSub.SetFocus;
end;

function TfrmActividadesAnexo2.lExisteMedida(sMedida: string): Boolean;
begin
  lExisteMedida := False;
  lExisteMedida := (strPos(pchar(connection.configuracion.FieldByName('txtValidaMaterial').AsString), pchar(sMedida)) <> nil)
end;

procedure TfrmActividadesAnexo2.tsMedidaExit(Sender: TObject);
begin
  if frmBarra1.btnCancel.Enabled = True then
    if tsMedida.Text <> '' then
      if not lExisteMedida(tsMedida.Text) then
      begin
        messageDLG('La unida de medida no existe!', mtInformation, [mbOk], 0);
        tsMedida.SetFocus;
      end;

  tsMedida.Color := global_color_salidaERP;

  if tsMedida.Text = '' then
    tmDescripcion.SetFocus;
end;

procedure TfrmActividadesAnexo2.tsIdMaterialKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsMedida.SetFocus
end;

procedure TfrmActividadesAnexo2.tiColorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    tsNumeroActividad.SetFocus
end;

procedure TfrmActividadesAnexo2.tiItemOrdenKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsNumeroActividad.SetFocus
end;

procedure TfrmActividadesAnexo2.tdFechaInicioExit(Sender: TObject);
begin
  if tdFechaFinal.Date < tdFechaInicio.Date then
    tdFechaFinal.Date := tdFechainicio.Date;

  if (ActividadesxAnexo.State = dsInsert) or (ActividadesxAnexo.State = dsEdit) then
    ActividadesxAnexo.FieldValues['dFechaFinal'] := ActividadesxAnexo.FieldValues['dFechaInicio'] + (ActividadesxAnexo.FieldValues['dDuracion'] - 1);

  tdFechaInicio.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.frmBarra1btnPrinterClick(Sender: TObject);
begin
  Global_OptGrafica := '';
  Application.CreateForm(TfrmGraficaGerencialDx, frmGraficaGerencialDx);
  frmGraficaGerencialDx.show;
end;

procedure TfrmActividadesAnexo2.tsNumeroActividadEnter(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tsNumeroActividadExit(Sender: TObject);
begin
  tsNumeroActividad.Color := global_color_salidaERP;
  if (ActividadesxAnexo.State = dsInsert) or (ActividadesxAnexo.State = dsEdit) then
    if not ActividadesxAnexo.FieldByName('sNumeroActividad').IsNull then
    begin
      if tsPaquete.KeyValue = Null then
        ActividadesxAnexo.FieldValues['sWbs'] := Trim(ActividadesxAnexo.FieldValues['sNumeroActividad'])
      else
      begin
        if (tsIdAnexo.KeyValue = Null) or (tsIdAnexo.KeyValue = '') then
          ActividadesxAnexo.FieldValues['sWbs'] := ActividadesxAnexo.FieldValues['sWbsAnterior'] + '.' + Trim(ActividadesxAnexo.FieldValues['sNumeroActividad'])
        else
          ActividadesxAnexo.FieldValues['sWbs'] := ActividadesxAnexo.FieldValues['sWbsAnterior'] + '.' + tsIdAnexo.KeyValue + '.' + Trim(ActividadesxAnexo.FieldValues['sNumeroActividad']);
      end;
    end;
end;

procedure TfrmActividadesAnexo2.tdCantidadAnexoChange(Sender: TObject);
begin
  TRxDBCalcEditChangef(tdCantidadAnexo, 'Cant. Anexo');
end;

procedure TfrmActividadesAnexo2.tdCantidadAnexoEnter(Sender: TObject);
begin
  tdCantidadAnexo.Color := global_color_entradaERP;

end;

procedure TfrmActividadesAnexo2.tdCantidadAnexoExit(Sender: TObject);
begin
  tdCantidadAnexo.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tsMedidaChange(Sender: TObject);
begin
//  if TDBEdit(Sender).Text = '-' then begin
//    TDBEdit(Sender).Text := '';
//  end;
end;

procedure TfrmActividadesAnexo2.tsMedidaEnter(Sender: TObject);
begin
  tsMedida.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tmDescripcionEnter(Sender: TObject);
begin
  tmDescripcion.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tmDescripcionExit(Sender: TObject);
begin
  tmDescripcion.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tmDescripcionSubEnter(Sender: TObject);
begin
    tmDescripcionSub.color  := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tmDescripcionSubExit(Sender: TObject);
begin
    tmDescripcionSub.color  := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tmDescripcionSubKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
       tsMedidaSub.SetFocus;
end;

procedure TfrmActividadesAnexo2.tdFechaInicioEnter(Sender: TObject);
begin
  tdFechaInicio.Color := global_color_entradaERP;
  
end;

procedure TfrmActividadesAnexo2.tdDuracionChange(Sender: TObject);
begin
//  tdbeditchangef(tdDuracion, 'Duracion');
end;

procedure TfrmActividadesAnexo2.tdDuracionEnter(Sender: TObject);
begin
  tdDuracion.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdFechaFinalEnter(Sender: TObject);
begin
  tdFechaFinal.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdFechaFinalExit(Sender: TObject);
begin
  if (ActividadesxAnexo.State = dsInsert) or (ActividadesxAnexo.State = dsEdit) then
    ActividadesxAnexo.FieldValues['dDuracion'] := DaysBetween(ActividadesxAnexo.FieldValues['dFechaFinal'], ActividadesxAnexo.FieldValues['dFechaInicio']) + 1;

  tdFechaFinal.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tdPonderadoChange(Sender: TObject);
begin
  tdbeditchangef(tdPonderado, 'Ponderado');
end;

procedure TfrmActividadesAnexo2.tdPonderadoEnter(Sender: TObject);
begin
  tdPonderado.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdPonderadoExit(Sender: TObject);
begin
  tdPonderado.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tlCalculaEnter(Sender: TObject);
begin
  tlCalcula.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tlCalculaExit(Sender: TObject);
begin
  tlCalcula.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tlExtraordinarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tdFechaInicio.SetFocus
end;

procedure TfrmActividadesAnexo2.tlExtraordinarioEnter(Sender: TObject);
begin
  tlExtraordinario.Color := global_color_entradaERP;

end;

procedure TfrmActividadesAnexo2.tlExtraordinarioExit(Sender: TObject);
begin
  tlExtraordinario.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tdCostoMNChange(Sender: TObject);
begin
  TRxDBCalcEditChangef(tdCostoMN, 'Costo MN');
end;

procedure TfrmActividadesAnexo2.tdCostoMNEnter(Sender: TObject);
begin
  tdCostoMN.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdCostoMNExit(Sender: TObject);
begin
  tdCostoMN.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tdCostoMNKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxDBCalcEdit(tdCostoMN, key) then
    key := #0;

  if Key = #13 then
    tdCostoDLL.SetFocus
end;

procedure TfrmActividadesAnexo2.tdCostoDLLChange(Sender: TObject);
begin
//  TRxDBCalcEditChangef(tdCostoDLL, 'Costo DLL');
end;

procedure TfrmActividadesAnexo2.tdCostoDLLEnter(Sender: TObject);
begin
  tdCostoDLL.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdCostoDLLExit(Sender: TObject);
begin
  tdCostoDLL.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tdCostoDLLKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not keyFiltroTRxDBCalcEdit(tdCostoDLL, key) then
    key := #0;
  if Key = #13 then
    tsIdAnexo.SetFocus
end;

procedure TfrmActividadesAnexo2.tdVentaMNChange(Sender: TObject);
begin
//  TRxDBCalcEditChangef(tdVentaMN, 'Venta MN');
end;

procedure TfrmActividadesAnexo2.tdVentaMNEnter(Sender: TObject);
begin
  tdVentaMN.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdVentaMNExit(Sender: TObject);
begin
  tdVentaMN.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tdVentaMNKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if not keyFiltroTRxDBCalcEdit(tdVentaMN, key) then
//    key := #0;
  if Key = #13 then
    tdVentaDLL.SetFocus
end;

procedure TfrmActividadesAnexo2.tdVentaMNSubEnter(Sender: TObject);
begin
    tdVentaMNSub.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdVentaMNSubExit(Sender: TObject);
begin
    tdVentaMNSub.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tdVentaDLLChange(Sender: TObject);
begin
  TRxDBCalcEditChangef(tdVentaDLL, 'Venta DLL ');
end;

procedure TfrmActividadesAnexo2.tdVentaDLLEnter(Sender: TObject);
begin
  tdVentaDLL.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdVentaDLLExit(Sender: TObject);
begin
  tdVentaDLL.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tdVentaDLLKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if not keyFiltroTRxDBCalcEdit(tdVentaDLL, key) then
//    key := #0;
  if Key = #13 then
    tdCostoMN.SetFocus
end;

procedure TfrmActividadesAnexo2.tdVentaDLLSubEnter(Sender: TObject);
begin
    tdVentaDLLSub.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tdVentaDLLSubExit(Sender: TObject);
begin
    tdVentaDLLSub.Color := global_color_salidaERP;
end;


procedure TfrmActividadesAnexo2.ActividadesxAnexoBeforePost(DataSet: TDataSet);
begin
  PCAbsoluto(ActividadesxAnexo, 'dCostoMN');
  PCAbsoluto(ActividadesxAnexo, 'dCostoDll');
  PCAbsoluto(ActividadesxAnexo, 'dVentaMN');
  PCAbsoluto(ActividadesxAnexo, 'dVentaDLL');
  PCAbsoluto(ActividadesxAnexo, 'dCantidadAnexo');
end;

procedure TfrmActividadesAnexo2.tsPartidaAnteriorEnter(Sender: TObject);
begin
  tsPartidaAnterior.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tsPartidaAnteriorExit(Sender: TObject);
begin
  tsPartidaAnterior.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tsPartidaAnteriorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    tlExtraordinario.SetFocus
end;

procedure TfrmActividadesAnexo2.tsSubActividadEnter(Sender: TObject);
begin
    tsSubactividad.color  := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tsSubActividadExit(Sender: TObject);
begin
    tsSubactividad.color  := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tsSubActividadKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then
       tmDescripcionSub.SetFocus;
end;

procedure TfrmActividadesAnexo2.tsIdFaseKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #08 then
    tsIdFase.KeyValue := null;

  if Key = #13 then
    tmDescripcion.SetFocus
end;

procedure TfrmActividadesAnexo2.tsIdAnexoEnter(Sender: TObject);
begin
  tsIdAnexo.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tsIdAnexoExit(Sender: TObject);
begin
  tsIdAnexo.Color := global_color_salidaERP;
  if (ActividadesxAnexo.State = dsInsert) or (ActividadesxAnexo.State = dsEdit) then
    if not ActividadesxAnexo.FieldByName('sNumeroActividad').IsNull then
    begin
      if tsPaquete.KeyValue = Null then
        ActividadesxAnexo.FieldValues['sWbs'] := Trim(ActividadesxAnexo.FieldValues['sNumeroActividad'])
      else
      begin
        if (tsIdAnexo.KeyValue = Null) or (tsIdAnexo.KeyValue = '') then
        begin
          ActividadesxAnexo.FieldValues['sWbs'] := ActividadesxAnexo.FieldValues['sWbsAnterior'] + '.' + Trim(ActividadesxAnexo.FieldValues['sNumeroActividad']);
          ActividadesxAnexo.FieldValues['sAnexo'] := '';
        end
        else
        begin
          if (ActividadesxAnexo.FieldByName('sMedida').IsNull) or (ActividadesxAnexo.FieldValues['sMedida'] = '') then
            ActividadesxAnexo.FieldValues['sWbs'] := ActividadesxAnexo.FieldValues['sWbsAnterior'] + '.' + Trim(ActividadesxAnexo.FieldValues['sNumeroActividad'])
          else
            ActividadesxAnexo.FieldValues['sWbs'] := ActividadesxAnexo.FieldValues['sWbsAnterior'] + '.' + tsIdAnexo.KeyValue + '.' + Trim(ActividadesxAnexo.FieldValues['sNumeroActividad']);
        end;
      end;
    end;
end;

procedure TfrmActividadesAnexo2.tsIdAnexoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsIdFase.SetFocus;

  if key = #08 then
    tsIdAnexo.KeyValue := null;
end;

procedure TfrmActividadesAnexo2.tsIdFaseEnter(Sender: TObject);
begin
  tsIdFase.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tsIdFaseExit(Sender: TObject);
begin
  tsIdFase.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.AlcancesxActividadAfterInsert(
  DataSet: TDataSet);
var
  iFase: Integer;
  dAvance: Real;
  lContinua: Boolean;
begin
  if ActividadesxAnexo.RecordCount > 0 then
    if global_grupo <> 'INTEL-CODE' then
      if ActividadesxAnexo.FieldValues['dInstalado'] = 0 then
        lContinua := True
      else
        lContinua := False
    else
      lContinua := True;

  if lContinua then
  begin
          //zDetallePartida.FieldValues['swbs'] := ActividadesxAnexo.FieldValues['swbs'] ;
    iFase := 1;
    dAvance := 100;
    Connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('Select Max(iFase) as iFase, Sum(dAvance) as dAvance From alcancesxactividad Where sContrato = :Contrato And sNumeroActividad = :Actividad and sWbs=:wbs and sAnexo =:Anexo Group By sNumeroActividad');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    Connection.QryBusca.Params.ParamByName('Anexo').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Anexo').Value := ActividadesxAnexo.FieldValues['sAnexo'];
    Connection.QryBusca.Params.ParamByName('wbs').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
    Connection.QryBusca.Open;
    if Connection.QryBusca.RecordCount > 0 then
    begin
      iFase := Connection.QryBusca.FieldValues['iFase'] + 1;
      dAvance := dAvance - Connection.QryBusca.FieldValues['dAvance'];
    end;
    if (dAvance > 0) then
    begin
      zDetallePartida.FieldValues['sContrato'] := global_contrato;
      zDetallePartida.FieldValues['sNumeroActividad'] := ActividadesxAnexo.FieldValues['sNumeroActividad'];
      zDetallePartida.FieldValues['sWbs'] := ActividadesxAnexo.FieldValues['sWbs'];
      zDetallePartida.FieldValues['iFase'] := iFase;
      zDetallePartida.FieldValues['dAvance'] := dAvance;
      zDetallePartida.FieldValues['sAnexo'] := ActividadesxAnexo.FieldValues['sAnexo'];
    end
    else
      zDetallePartida.Cancel
  end
  else
    zDetallePartida.Cancel
end;

procedure TfrmActividadesAnexo2.Grid_PartidasConveniosGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  if ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sIdConvenio').AsString = global_convenio) then
    Background := clGradientInactiveCaption
end;

procedure TfrmActividadesAnexo2.Grid_personalDblClick(Sender: TObject);
begin
  AgruparPaquete('Personal', personal.FieldValues['sSimbolo'], personal.FieldValues['sNumeroPaquete'], 'recursospersonalnuevos');
end;

procedure TfrmActividadesAnexo2.Grid_personalGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
    if Personal.RecordCount > 0 then
    begin
      AFont.Color := clBlue;
      if ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sSimbolo').AsString = '+') or ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sSimbolo').AsString = '-') then
      begin
        AFont.Color := clBlue;
        Afont.Style := [fsBold];
        Afont.Size := Afont.Size + 1;
        Background := EsBkColor[1];
      end;
    end;
end;

procedure TfrmActividadesAnexo2.Grid_personalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid2.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmActividadesAnexo2.Grid_personalMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid2.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmActividadesAnexo2.Grid_personalTitleClick(Column: TColumn);
begin
  //UtGrid2.DbGridTitleClick(Column);
end;

procedure TfrmActividadesAnexo2.Grid_subactividadesDblClick(Sender: TObject);
begin
    if Grid_subactividades.Col = 1 then
    begin
        if subactividades.FieldValues['sTipoActividad'] = 'Paquete' then
        begin
            if subactividades.FieldValues['sSimbolo'] = '-' then
            begin
                connection.QryBusca.Active := False;
                connection.QryBusca.Sql.Clear;
                connection.QryBusca.Sql.Add('Update alcancesxactividad set sSimbolo = "+" ' +
                                            'Where sContrato = :Contrato and sIdConvenio =:Convenio And sWbs=:wbs and sNumeroActividad = :Actividad and iFase =:Fase ');
                connection.QryBusca.Params.ParamByName('Contrato').DataType  := ftString;
                connection.QryBusca.Params.ParamByName('Contrato').Value     := global_contrato;
                connection.QryBusca.Params.ParamByName('Convenio').DataType  := ftString;
                connection.QryBusca.Params.ParamByName('Convenio').Value     := global_convenio;
                connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
                connection.QryBusca.Params.ParamByName('Actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'];
                connection.QryBusca.Params.ParamByName('wbs').DataType       := ftString;
                connection.QryBusca.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'];
                connection.QryBusca.Params.ParamByName('Fase').DataType      := ftInteger;
                connection.QryBusca.Params.ParamByName('Fase').Value         := subactividades.FieldValues['iFase'];
                connection.QryBusca.ExecSQL;

                connection.QryBusca.Active := False;
                connection.QryBusca.Sql.Clear;
                connection.QryBusca.Sql.Add('Update alcancesxactividad set sSimbolo = "*" ' +
                                            'Where sContrato = :Contrato and sIdConvenio =:Convenio And sWbs=:wbs and sNumeroActividad = :Actividad and iFaseAnterior =:Fase ');
                connection.QryBusca.Params.ParamByName('Contrato').DataType  := ftString;
                connection.QryBusca.Params.ParamByName('Contrato').Value     := global_contrato;
                connection.QryBusca.Params.ParamByName('Convenio').DataType  := ftString;
                connection.QryBusca.Params.ParamByName('Convenio').Value     := global_convenio;
                connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
                connection.QryBusca.Params.ParamByName('Actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'];
                connection.QryBusca.Params.ParamByName('wbs').DataType       := ftString;
                connection.QryBusca.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'];
                connection.QryBusca.Params.ParamByName('Fase').DataType      := ftInteger;
                connection.QryBusca.Params.ParamByName('Fase').Value         := subactividades.FieldValues['iFase'];
                connection.QryBusca.ExecSQL;
            end
            else
            begin
                connection.QryBusca.Active := False;
                connection.QryBusca.Sql.Clear;
                connection.QryBusca.Sql.Add('Update alcancesxactividad set sSimbolo = "-" ' +
                                            'Where sContrato = :Contrato and sIdConvenio =:Convenio And sWbs=:wbs and sNumeroActividad = :Actividad and iFase =:Fase ');
                connection.QryBusca.Params.ParamByName('Contrato').DataType  := ftString;
                connection.QryBusca.Params.ParamByName('Contrato').Value     := global_contrato;
                connection.QryBusca.Params.ParamByName('Convenio').DataType  := ftString;
                connection.QryBusca.Params.ParamByName('Convenio').Value     := global_convenio;
                connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
                connection.QryBusca.Params.ParamByName('Actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'];
                connection.QryBusca.Params.ParamByName('wbs').DataType       := ftString;
                connection.QryBusca.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'];
                connection.QryBusca.Params.ParamByName('Fase').DataType      := ftInteger;
                connection.QryBusca.Params.ParamByName('Fase').Value         := subactividades.FieldValues['iFase'];
                connection.QryBusca.ExecSQL;

                connection.QryBusca.Active := False;
                connection.QryBusca.Sql.Clear;
                connection.QryBusca.Sql.Add('Update alcancesxactividad set sSimbolo = "" ' +
                                            'Where sContrato = :Contrato and sIdConvenio =:Convenio And sWbs=:wbs and sNumeroActividad = :Actividad and iFaseAnterior =:Fase ');
                connection.QryBusca.Params.ParamByName('Contrato').DataType  := ftString;
                connection.QryBusca.Params.ParamByName('Contrato').Value     := global_contrato;
                connection.QryBusca.Params.ParamByName('Convenio').DataType  := ftString;
                connection.QryBusca.Params.ParamByName('Convenio').Value     := global_convenio;
                connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
                connection.QryBusca.Params.ParamByName('Actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'];
                connection.QryBusca.Params.ParamByName('wbs').DataType       := ftString;
                connection.QryBusca.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'];
                connection.QryBusca.Params.ParamByName('Fase').DataType      := ftInteger;
                connection.QryBusca.Params.ParamByName('Fase').Value         := subactividades.FieldValues['iFase'];
                connection.QryBusca.ExecSQL;
            end;

        end;
        subactividades.Refresh;
    end
    else
    begin
        sOpcionSubactividad   := 'Edit';
        tsSubActividad.Text   := subactividades.FieldValues['sNumeroActividadSub'];
        tsMedidaSub.Text      := subactividades.FieldValues['sMedida'];
        tdCantidadSub.Value   := subactividades.FieldValues['dCantidad'];
        tdPonderadoSub.Value  := subactividades.FieldValues['dPonderado'];
        tdVentaMnSub.Value    := subactividades.FieldValues['dVentaMN'];
        tdVentaDLLSub.Value   := subactividades.FieldValues['dVentaDLL'];
        tdDuracionSub.Value   := subactividades.FieldValues['dDuracion'];
        tmDescripcionSub.Text := subactividades.FieldValues['sDescripcion'];
        tdFechaInicioSub.Date := subactividades.FieldValues['dFechaInicio'];
        tdFechaFinalSub.Date  := subactividades.FieldValues['dFechaFinal'];
        tsTipo.ItemIndex      := tsTipo.Items.IndexOf(subactividades.FieldValues['sTipoActividad']);
        PanelSubActividad.Visible := True;
        tmDescripcionSub.SetFocus;
    end;       
end;

procedure TfrmActividadesAnexo2.Grid_subactividadesGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  try
    if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
      if subactividades.RecordCount > 0 then
      begin
          AFont.Color := clBlue;
          if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoActividad').AsString = 'Paquete' then
          begin
              Afont.Style := [fsBold];
              Afont.Size := Afont.Size + 1;
              Background := EsBkColor[(Sender as TrxDBGrid).DataSource.DataSet.FieldByName('iNivel').AsInteger + 1]
          end
          else
             AFont.Color := clBlack;
      end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/SubActviidades', 'Al cambiar de partida', 0);
    end;
  end;
end;

procedure TfrmActividadesAnexo2.tsEspecificacionEnter(Sender: TObject);
begin
  tsEspecificacion.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tsEspecificacionExit(Sender: TObject);
begin
  tsEspecificacion.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tsEspecificacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdVentaMN.SetFocus
end;

procedure TfrmActividadesAnexo2.CopiarAlcances1Click(Sender: TObject);
begin
  for iItemAlcancesArray := 1 to 100 do
  begin
    sAlcancesArray[iItemAlcancesArray] := '';
    dAlcancesArray[iItemAlcancesArray] := 0
  end;

  if zDetallePartida.RecordCount > 0 then
  begin
    iItemAlcancesArray := 0;
    zDetallePartida.First;
    while not zDetallePartida.Eof do
    begin
      iItemAlcancesArray := iItemAlcancesArray + 1;
      sAlcancesArray[iItemAlcancesArray] := zDetallePartida.FieldValues['sDescripcion'];
      dAlcancesArray[iItemAlcancesArray] := zDetallePartida.FieldValues['dAvance'];
      zDetallePartida.Next;
    end
  end

end;

procedure TfrmActividadesAnexo2.Copy1Click(Sender: TObject);
begin
  //UtGrid.CopyRowsToClip;
end;

procedure TfrmActividadesAnexo2.PegarAlcances1Click(Sender: TObject);
var
  Elementos: Integer;
  lContinua: Boolean;
begin
  if iItemAlcancesArray > 0 then
    if ActividadesxAnexo.FieldValues['dInstalado'] = 0 then
      if zDetallePartida.RecordCount = 0 then
        lContinua := True
      else
        lContinua := False
    else
      lContinua := False;

  if lContinua then
  begin
    Elementos := 1;
    while Elementos <= iItemAlcancesArray do
    begin
      if Trim(sAlcancesArray[Elementos]) <> '' then
      begin
        zDetallePartida.Append;
        zDetallePartida.FieldValues['sDescripcion'] := sAlcancesArray[Elementos];
        zDetallePartida.FieldValues['dAvance'] := dAlcancesArray[Elementos];
        zDetallePartida.post;
      end
      else
        Elementos := iItemAlcancesArray;
      Elementos := Elementos + 1
    end
  end
  else
    MessageDlg('La partida Anexo seleccionada contiene alcances o ha sido reportada, no es posible realizar la accion.', mtInformation, [mbOk], 0)
end;

procedure TfrmActividadesAnexo2.ImprimirAlcancesporActividad1Click(
  Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_alcancesxpartida.fr3') then
  begin
       showmessage('El archivo de reporte '+global_Mireporte+'_alcancesxpartida.fr3 no existe, notifique al administrador del sistema');
       exit;
  end;
  PartidasxAlcance.Refresh;
  frxDetalleAlcance.LoadFromFile(global_files + global_miReporte + '_alcancesxpartida.fr3');
  frxDetalleAlcance.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
end;

procedure TfrmActividadesAnexo2.ImprimirCostoClick(Sender: TObject);
begin
  if not FileExists(global_files + global_miReporte + '_AnexoC.fr3') then
  begin
     showmessage('El archivo de reporte '+global_Mireporte+'_AnexoC.fr3 no existe, notifique al administrador del sistema');
     exit;
  end;

  AnexoC.LoadFromFile(global_files + global_MiReporte +'_AnexoC.fr3');
  AnexoC.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP));
end;

procedure TfrmActividadesAnexo2.ImprimirExplosiondeInsumos1Click(
  Sender: TObject);
begin
  if rxExplosion.RecordCount = 0 then
  begin
    messageDLG('Para Imprimir Haga clic sobre Explosion de Insumos.', mtInformation, [mbOk], 0);
    exit;
  end;
  AnexoC.LoadFromFile(global_files + global_miReporte + '_explosion_insumos.fr3');
  AnexoC.ShowReport(connection.configuracion.FieldByName('sFormatos').AsString, PermisosExportar(connection.zConnection, global_grupo, sMenuP)); ;
end;

procedure TfrmActividadesAnexo2.Imprimir1Click(Sender: TObject);
begin
  frmBarra1.btnPrinter.Click
end;

procedure TfrmActividadesAnexo2.DetalledelaPartida1Click(Sender: TObject);
var
  myForm: TForm;
  zHistorico: TZReadOnlyQuery;
  zDSHistorico: tDataSource;
  GridHistorico: TRxDBGrid;
begin
  if (ActividadesxAnexo.State <> dsInsert) or (ActividadesxAnexo.State <> dsEdit) then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] <> 'Paquete' then
    begin
      myForm := TForm.Create(Self);
      try
        myForm.Position := poDesktopCenter;
        myForm.Caption := 'Historial del Concepto Seleccionado';
        MyForm.BorderIcons := [];
        MyForm.Width := 800;
        MyForm.Height := 280;
        MyForm.BorderStyle := bsSingle;
        MyForm.Color := $00FEC6BA;

        zHistorico := TZReadOnlyQuery.Create(nil);
        zHistorico.Connection := connection.zConnection;
        zHistorico.Active := False;
        zHistorico.Sql.Clear;
        zHistorico.Sql.Add('Select c.sDescripcion, a.sIdConvenio, a.dFechaInicio, a.dFechaFinal, a.dCantidadAnexo, a.dVentaMN, a.dVentaDLL, a.dPonderado From actividadesxanexo a ' +
          'INNER JOIN convenios c ON (a.sContrato = c.sContrato And a.sIdConvenio = c.sIdConvenio) ' +
          'Where a.sContrato = :Contrato And a.sWbs = :Wbs And a.sNumeroActividad = :Actividad And a.sTipoActividad <> "Paquete" Order By c.dFecha ');
        zHistorico.Params.ParamByName('Contrato').DataType := ftString;
        zHistorico.Params.ParamByName('Contrato').Value := global_contrato;
        zHistorico.Params.ParamByName('Wbs').DataType := ftString;
        zHistorico.Params.ParamByName('Wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
        zHistorico.Params.ParamByName('Actividad').DataType := ftString;
        zHistorico.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
        zHistorico.Open;
        zDSHistorico := tDataSource.Create(nil);
        zDSHistorico.DataSet := zHistorico;

        GridHistorico := TRxDBGrid.Create(MyForm);
        with GridHistorico do
        begin
          Parent := myForm;
          Visible := True;
          Align := alCustom;
          Options := [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit];
          TitleButtons := True;
          DataSource := zDSHistorico;
          Width := 800;
          Height := 230;
          Anchors := [akLeft, akTop, akRight, akBottom];
          ParentColor := True;
          Ctl3D := False;

          Columns.Clear;
          Columns.Add;
          Columns[0].FieldName := 'sIdConvenio';
          Columns[0].Width := 50;
          Columns[0].Title.Caption := '#';
          Columns.Add;
          Columns[1].FieldName := 'sDescripcion';
          Columns[1].Width := 350;
          Columns[1].Title.Caption := 'Nombre de Convenio';
          Columns.Add;
          Columns[2].FieldName := 'dFechaInicio';
          Columns[2].Width := 70;
          Columns[2].Title.Caption := 'F. Inicio';
          Columns.Add;
          Columns[3].FieldName := 'dFechaFinal';
          Columns[3].Width := 70;
          Columns[3].Title.Caption := 'F. Final';
          Columns.Add;
          Columns[4].FieldName := 'dCantidadAnexo';
          Columns[4].Width := 70;
          Columns[4].Title.Caption := 'Cant. a Inst.';
          Columns[4].Title.Alignment := taRightJustify;
          Columns.Add;
          Columns[5].FieldName := 'dVentaMN';
          Columns[5].Width := 70;
          Columns[5].Title.Caption := '$ Precio MN';
          Columns[5].Title.Alignment := taRightJustify;
          Columns.Add;
          Columns[6].FieldName := 'dPonderado';
          Columns[6].Width := 70;
          Columns[6].Title.Caption := '% Ponderado';
          Columns[6].Title.Alignment := taRightJustify;
        end;

        with TButton.Create(Self) do
        begin
          Left := 340;
          Top := 210;
          Width := 120;
          Height := 35;
          ModalResult := mrCancel;
          Cancel := True;
          Parent := MyForm;
          Caption := 'Cerrar Consulta'
        end;

        myForm.ShowModal;
      finally
        zHistorico.Destroy;
        zDSHistorico.Destroy;
        GridHistorico.Destroy;
        myForm.Free;
      end;
    end;
end;

procedure TfrmActividadesAnexo2.DetPaqueteClick(Sender: TObject);
var
  myForm: TForm;
  zDetallePaquete: TZQuery;
  zDSDetallePaquete: tDataSource;
  GridDetallePaquete: TRxDBGrid;
begin
  if (ActividadesxAnexo.State <> dsInsert) or (ActividadesxAnexo.State <> dsEdit) then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Paquete' then
    begin
      myForm := TForm.Create(Self);
      try
        myForm.Position := poDesktopCenter;
        myForm.Caption := 'Detalle del Paquete "' + MidStr(ActividadesxAnexo.FieldValues['mDescripcion'], 1, 250) + '"';
        MyForm.BorderIcons := [];
        MyForm.Width := 1020;
        MyForm.Height := 480;
        MyForm.BorderStyle := bsSingle;
        MyForm.Color := $00FEC6BA;

        zDetallePaquete := TZQuery.Create(nil);
        zDetallePaquete.Connection := connection.zConnection;
        zDetallePaquete.Active := False;
        zDetallePaquete.Sql.Clear;
        zDetallePaquete.Sql.Add('Select *, concat( RPAD("",iNivel * 3," ") , sWbs) as sSpacesNumeroActividad, substr(mDescripcion, 1, 255) as sDescripcion From actividadesxanexo ' +
          'where sContrato = :contrato And sIdConvenio = :Convenio And sWBSAnterior Like :Paquete Order By iItemOrden');
        zDetallePaquete.Params.ParamByName('Contrato').DataType := ftString;
        zDetallePaquete.Params.ParamByName('Contrato').Value := global_contrato;
        zDetallePaquete.Params.ParamByName('Convenio').DataType := ftString;
        zDetallePaquete.Params.ParamByName('Convenio').Value := global_convenio;
        zDetallePaquete.Params.ParamByName('Paquete').DataType := ftString;
        zDetallePaquete.Params.ParamByName('Paquete').Value := ActividadesxAnexo.FieldValues['sWbs'] + '%';
        zDetallePaquete.Open;
        zDetallePaquete.BeforeInsert := zProcCancelaInsert;
        zDetallePaquete.BeforeDelete := zProcCancelaInsert;
        zDSDetallePaquete := tDataSource.Create(nil);
        zDSDetallePaquete.DataSet := zDetallePaquete;
        zDSDetallePaquete.AutoEdit := True;

        GridDetallePaquete := TRxDBGrid.Create(MyForm);
        with GridDetallePaquete do
        begin
          Parent := myForm;
          Visible := True;
          Align := alCustom;
          Options := [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgCancelOnExit];
          TitleButtons := True;
          DataSource := zDSDetallePaquete;
          Width := 1020;
          Height := 430;
          Anchors := [akLeft, akTop, akRight, akBottom];
          ParentColor := True;
          Ctl3D := False;

          Columns.Clear;
          Columns.Add;
          Columns[0].FieldName := 'iNivel';
          Columns[0].Width := 40;
          Columns[0].Title.Caption := 'Nivel';
          Columns[0].ReadOnly := True;
          Columns[0].Font.Style := [fsBold];
          Columns[0].Font.Color := clBlue;
          Columns.Add;
          Columns[1].FieldName := 'sSpacesNumeroActividad';
          Columns[1].Width := 120;
          Columns[1].Title.Caption := 'Wbs';
          Columns[1].ReadOnly := True;
          Columns[1].Font.Style := [fsBold];
          Columns[1].Font.Color := clBlue;
          Columns.Add;
          Columns[2].FieldName := 'sNumeroActividad';
          Columns[2].Width := 80;
          Columns[2].Title.Caption := 'Actividad';
          Columns[2].ReadOnly := True;
          Columns[2].Font.Style := [fsBold];
          Columns[2].Font.Color := clBlue;
          Columns.Add;
          Columns[3].FieldName := 'sDescripcion';
          Columns[3].Width := 300;
          Columns[3].Title.Caption := 'Descripcion';
          Columns[3].ReadOnly := True;
          Columns[3].Font.Style := [fsBold];
          Columns[3].Font.Color := clBlue;
          Columns.Add;
          Columns[4].FieldName := 'dCantidadAnexo';
          Columns[4].Width := 70;
          Columns[4].Title.Caption := 'Cant. a Inst.';
          Columns[4].Title.Alignment := taRightJustify;
          Columns[4].Font.Style := [];
          Columns.Add;
          Columns[5].FieldName := 'sMedida';
          Columns[5].Width := 40;
          Columns[5].Title.Caption := 'U. Medida';
          Columns[5].Title.Alignment := taRightJustify;
          Columns[5].Font.Style := [];
          Columns.Add;
          Columns[6].FieldName := 'dVentaMN';
          Columns[6].Width := 70;
          Columns[6].Title.Caption := '$ Precio MN';
          Columns[6].Title.Alignment := taRightJustify;
          Columns[6].Font.Style := [];
          Columns.Add;
          Columns[7].FieldName := 'dPonderado';
          Columns[7].Width := 70;
          Columns[7].Title.Caption := '% Ponderado';
          Columns[7].Title.Alignment := taRightJustify;
          Columns[7].Font.Style := [];
          Columns.Add;
          Columns[8].FieldName := 'dFechaInicio';
          Columns[8].Width := 60;
          Columns[8].Title.Caption := 'F. Inicio';
          Columns[8].Font.Style := [];
          Columns.Add;
          Columns[9].FieldName := 'dFechaFinal';
          Columns[9].Width := 60;
          Columns[9].Title.Caption := 'F. Final';
          Columns[9].Font.Style := [];
          Columns.Add;
          Columns[10].FieldName := 'iColor';
          Columns[10].Width := 50;
          Columns[10].Title.Caption := 'Color';
          Columns[10].Title.Alignment := taRightJustify;
          Columns[10].Font.Style := [];
        end;

        with TButton.Create(Self) do
        begin
          Left := 450;
          Top := 410;
          Width := 120;
          Height := 35;
          ModalResult := mrOk;
          Default := True;
          Parent := MyForm;
          Caption := 'Cerra Consulta'
        end;

        myForm.ShowModal;
      finally
        GridDetallePaquete.Destroy;
        ActividadesxAnexo.Refresh;
        zDetallePaquete.Destroy;
        zDSDetallePaquete.Destroy;
        myForm.Free;
      end;
    end;
end;

procedure TfrmActividadesAnexo2.Grid_ActividadesCellClick(Column: TColumn);
begin
  if frmBarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;
 // Grid_Actividades.MultiSelect := True;
  PanelSubactividad.Visible    := False;
end;

procedure TfrmActividadesAnexo2.AlcancesxActividadBeforeEdit(DataSet: TDataSet);
begin
  ValorAnt := zDetallePartida.fieldbyname('dAvance').asfloat;
end;

procedure TfrmActividadesAnexo2.AlcancesxActividadBeforePost(
  DataSet: TDataSet);
var
  dAvance: Extended;
  Guardar: boolean;
begin

  guardar := true;
  if zDetallePartida.state = dsInsert then
  begin

    Connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('Select Sum(dAvance) as dAvance From alcancesxactividad Where sContrato = :Contrato and sWbs=:wbs And sNumeroActividad = :Actividad and sAnexo =:Anexo Group By sNumeroActividad');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    Connection.QryBusca.Params.ParamByName('Anexo').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Anexo').Value := ActividadesxAnexo.FieldValues['sAnexo'];
    Connection.QryBusca.Params.ParamByName('wbs').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
    Connection.QryBusca.Open;
    if Connection.QryBusca.RecordCount = 1 then
      Guardar := not ((zDetallePartida.fieldbyname('dAvance').asfloat + Connection.QryBusca.Fieldbyname('dAvance').AsFloat) > 100)
    else
      Guardar := not ((zDetallePartida.fieldbyname('dAvance').asfloat) > 100);
  end;

  if zDetallePartida.state = dsedit then
  begin

   // showmessage(zDetallePartida.fieldbyname('dAvance').AsString);
    Connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    Connection.QryBusca.SQL.Clear;
    Connection.QryBusca.SQL.Add('Select Sum(dAvance) as dAvance From alcancesxactividad Where sContrato = :Contrato and sWbs=:wbs And sNumeroActividad = :Actividad and sAnexo =:Anexo Group By sNumeroActividad');
    Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    Connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    Connection.QryBusca.Params.ParamByName('Anexo').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('Anexo').Value := ActividadesxAnexo.FieldValues['sAnexo'];
    Connection.QryBusca.Params.ParamByName('wbs').DataType := ftString;
    Connection.QryBusca.Params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
    Connection.QryBusca.Open;
    if Connection.QryBusca.RecordCount = 1 then
      Guardar := not ((zDetallePartida.fieldbyname('dAvance').asfloat + (Connection.QryBusca.Fieldbyname('dAvance').AsFloat - ValorAnt)) > 100)
    else
      Guardar := not ((zDetallePartida.fieldbyname('dAvance').asfloat) > 100);
  end;

  if guardar then
  begin

    if (zDetallePartida.FieldByName('sDescripcion').IsNull) then
      zDetallePartida.FieldValues['sDescripcion'] := 'S/DESCRIPCION'
    else
      if (zDetallePartida.FieldByName('sDescripcion').AsString = '') then
        zDetallePartida.FieldValues['sDescripcion'] := 'S/DESCRIPCION'
      else
        zDetallePartida.FieldValues['sDescripcion'] := UpperCase(zDetallePartida.FieldValues['sDescripcion'])
  end
  else
  begin
    zDetallePartida.Cancel; //  SendMessage(self.WindowHandle, WM_CANCELMODE, 0, 0 ); //WM_CANCELMODE,
    abort;
  end;
end;

procedure TfrmActividadesAnexo2.ComentariosAdicionalesalaPartida1Click(
  Sender: TObject);
begin
  if ActividadesxAnexo.Recordcount > 0 then
  begin
    global_wbs := ActividadesxAnexo.FieldValues['sWbs'];
    global_partida := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    global_orden := '';
    Application.CreateForm(TfrmComentariosxAnexo, frmComentariosxAnexo);
    frmComentariosxAnexo.show;
  end;
end;

procedure TfrmActividadesAnexo2.ComparativoInstaladoVsProgramadoVsGeneradoExcel1Click(
  Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// GENERACION DE PROGRAMA DE TRABAJO CON VOLUMENES //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Alto: Extended;
      MiFechaI, MiFechaF, MiFecha: tDate;
      Ren, nivel, i, total: integer;
      Q_Partidas: TZReadOnlyQuery;
      dVolumen, dReal, dCantidad: double;
      Progreso, TotalProgreso: real;
      sWbs: string;
      dFechaInicial1, dFechaFinal1, dFechaInicial2, dFechaFinal2: TDate;
    begin
      Q_Partidas := TZReadOnlyQuery.Create(self);
      Q_Partidas.Connection := connection.zConnection;

      Ren := 2;
    // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;

      Excel.Columns['A:A'].ColumnWidth := 0;
      Excel.Columns['B:B'].ColumnWidth := 0;
      Excel.Columns['C:C'].ColumnWidth := 9;
      Excel.Columns['D:D'].ColumnWidth := 40;
      Excel.Columns['E:E'].ColumnWidth := 10;
      Excel.Columns['F:G'].ColumnWidth := 10;
      Excel.Columns['H:I'].ColumnWidth := 9.29;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Nivel';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Partida';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.Value := 'Ponderado';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.Value := 'Fecha I.';
      FormatoEncabezado;
      Hoja.Range['I1:I1'].Select;
      Excel.Selection.Value := 'Fecha F.';
      FormatoEncabezado;
      with Connection do
      begin
      {obtener las fechas iniciales y finales programas por parte de la cia}
        QryBusca.Active := false;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Add('select min(dIdFecha) as dFechaInicialProg from distribuciondeanexocia b ' +
          ' inner join  actividadesxanexo  a ' +
          '   on a.sContrato=b.sContrato and a.sWbs=b.sWbs and a.sNumeroActividad=b.sNumeroActividad  ' +
          ' where b.sContrato=:contrato  and b.sIdConvenio=:convenio  ');
        QryBusca.ParamByName('contrato').AsString := global_contrato;
        QryBusca.ParamByName('convenio').AsString := global_convenio;
        QryBusca.Open;
        if QryBusca.RecordCount > 0 then
        begin
          dFechaInicial1 := QryBusca.FieldByName('dFechaInicialProg').AsDateTime;
        end;
        QryBusca.Active := false;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Add('select max(dIdFecha) as dFechaFinalProg from distribuciondeanexocia b ' +
          ' inner join  actividadesxanexo  a ' +
          '   on a.sContrato=b.sContrato and a.sWbs=b.sWbs and a.sNumeroActividad=b.sNumeroActividad  ' +
          ' where b.sContrato=:contrato  and b.sIdConvenio=:convenio  ');
        QryBusca.ParamByName('contrato').AsString := global_contrato;
        QryBusca.ParamByName('convenio').AsString := global_convenio;
        QryBusca.Open;
        if QryBusca.RecordCount > 0 then
        begin
          dFechaFinal1 := QryBusca.FieldByName('dFechaFinalProg').AsDateTime;
        end;
       {Obtener las fechas iniciales y finales de las partidas que estan programadas(cia) y reportadas }
        QryBusca.Active := false;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Add('select min(a.dIdFecha) as dFechaInicialProg from distribuciondeanexocia b ' +
          ' inner join actividadesxorden ao ' +
          '   on ao.sContrato=b.sContrato and ao.sIdConvenio=b.sIdConvenio and ao.sWbsContrato=b.sWbs and ao.sNumeroActividad=b.sNumeroActividad  ' +
          ' inner join  bitacoradeactividades  a ' +
          '   on b.sContrato=a.sContrato and ao.sNumeroOrden=a.sNumeroOrden and ao.sWbs=a.sWbs and ao.sNumeroActividad=a.sNumeroActividad  ' +
          ' where b.sContrato=:contrato  and b.sIdConvenio=:convenio  ');
        QryBusca.ParamByName('contrato').AsString := global_contrato;
        QryBusca.ParamByName('convenio').AsString := global_convenio;
        QryBusca.Open;
        if QryBusca.RecordCount > 0 then
        begin
          dFechaInicial2 := QryBusca.FieldByName('dFechaInicialProg').AsDateTime;
        end;
        QryBusca.Active := false;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Add('select max(a.dIdFecha) as dFechaFinalProg from distribuciondeanexocia b ' +
          ' inner join actividadesxorden ao ' +
          '   on ao.sContrato=b.sContrato and ao.sIdConvenio=b.sIdConvenio and ao.sWbsContrato=b.sWbs and ao.sNumeroActividad=b.sNumeroActividad  ' +
          ' inner join  bitacoradeactividades  a ' +
          '   on b.sContrato=a.sContrato and ao.sNumeroOrden=a.sNumeroOrden and ao.sWbs=a.sWbs and ao.sNumeroActividad=a.sNumeroActividad  ' +
          ' where b.sContrato=:contrato  and b.sIdConvenio=:convenio  ');
        QryBusca.ParamByName('contrato').AsString := global_contrato;
        QryBusca.ParamByName('convenio').AsString := global_convenio;
        QryBusca.Open;
        if QryBusca.RecordCount > 0 then
        begin
          dFechaFinal2 := QryBusca.FieldByName('dFechaFinalProg').AsDateTime;
        end;

        {Compara scual de las fechas iniciales es mas vieja..}
        if not (dFechaInicial2 = 0) then
          if dFechaInicial1 > dFechaInicial2 then dFechaInicial1 := dFechaInicial2;
        {Compara scual de las fechas finales es mas reciente..}
        if not (dFechaFinal2 = 0) then
          if dFechaFinal1 < dFechaFinal2 then dFechaFinal1 := dFechaFinal2;

        {Ahora obtener la fecha de cuando se genera}
        QryBusca.Active := false;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Add(' select max(a.dFecha) as dFechaFinalProg from distribuciondeanexocia b ' +
          ' inner join  estimacionxpartida  a ' +
          '   on b.sContrato=a.sContrato and b.sWbs=a.sWbsContrato and b.sNumeroActividad=a.sNumeroActividad  ' +
          ' where b.sContrato=:contrato and b.sIdConvenio=:convenio  ');
        QryBusca.ParamByName('contrato').AsString := global_contrato;
        QryBusca.ParamByName('convenio').AsString := global_convenio;
        QryBusca.Open;
        if QryBusca.RecordCount > 0 then
        begin
          dFechaFinal2 := QryBusca.FieldByName('dFechaFinalProg').AsDateTime;
        end;
        {Compara scual de las fechas finales es mas reciente..}
        if not (dFechaFinal2 = 0 ) then
          if dFechaFinal1 < dFechaFinal2 then dFechaFinal1 := dFechaFinal2;

        {Crear los encabezados de las fechas en base a los fechas inicial y final obtenidos}
        i := 1;
        dFechaInicial2 := dFechaInicial1;
        while (dFechaInicial2 <= dFechaFinal1) do
        begin
          Hoja.Cells[Ren - 1, 10 + i].Select;
                 {Formato de las fechas archivo Excel,, 24/07/2011..}
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := DateToStr(dFechaInicial2);
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clWhite;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Interior.ColorIndex := 49;
          dFechaInicial2 := IncDay(dFechaInicial2);
          Inc(i);
        end;
        Hoja.Cells[Ren - 1, 10 + i].Select;
        Excel.Selection.Value := 'TOTAL';
        Excel.Selection.HorizontalAlignment := xlRight;
        Excel.Selection.VerticalAlignment := xlCenter;
        Excel.Selection.Font.Color := clWhite;
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Interior.ColorIndex := 11;

        {Ahora leer todas las actividades programadas y en base a estas, obtener la informacion requerida (reportadas, programadas)}
        QryBusca.Active := false;
        QryBusca.SQL.Clear;
        QryBusca.SQL.Add(' select  a.sWbs,a.iNivel,a.sMedida,a.sNumeroActividad, a.mDescripcion ,' +
          '     b.dIdFecha, a.dCantidadAnexo as dCantidad,a.sTipoActividad,a.dPonderado,a.dFechaInicio,dFechaFinal, a.dCantidadAnexo as dReal,' +
          '    b.dCantidad as dProgramado ' +
          ' from distribuciondeanexocia b ' +
          ' inner join  actividadesxanexo  a  ' +
          '   on b.sContrato=a.sContrato  and b.sWbs=a.sWbs and b.sNumeroActividad=a.sNumeroActividad  ' +
          ' where a.sContrato=:contrato  and a.sIdConvenio=:convenio  ' +
          ' group by a.sWbs  ' +
          ' order by a.iItemOrden;');
        QryBusca.ParamByName('contrato').AsString := global_contrato;
        QryBusca.ParamByName('convenio').AsString := global_convenio;
        QryBusca.Open;

        sWbs := '';
        Inc(Ren);
        while not QryBusca.EOF do
        begin
          {Descripcion del concepto}
          if sWbs <> QryBusca.FieldValues['sWbs'] then
          begin
            sWbs := QryBusca.FieldValues['sWbs'];
                {Escritura de Datos en el Archvio de Excel..}
            Hoja.Cells[Ren, 1].Select;
            Excel.Selection.Value := global_contrato;
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Size := 11;
            Excel.Selection.Font.Bold := False;
            Excel.Selection.Font.Name := 'Calibri';

            Hoja.Cells[Ren, 2].Select;
            Excel.Selection.Value := QryBusca.FieldValues['iNivel'];

            Hoja.Cells[Ren, 3].Select;
            Excel.Selection.Value := QryBusca.FieldValues['sNumeroActividad'];
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;

            Hoja.Cells[Ren, 4].Select;
            Excel.Selection.Value := QryBusca.FieldValues['mDescripcion'];
            Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
            Hoja.Cells[Ren, 4].Value := '';

            if Alto > 15 then
              Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := Alto
            else
              Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 15;

            Excel.Selection.Value := QryBusca.FieldValues['mDescripcion'];

            Hoja.Cells[Ren, 5].Select;
            Excel.Selection.Value := QryBusca.FieldValues['sMedida'];
            Excel.Selection.HorizontalAlignment := xlCenter;
            Excel.Selection.VerticalAlignment := xlCenter;

            Hoja.Cells[Ren, 6].Select;
            Excel.Selection.NumberFormat := '@';
            Excel.Selection.Value := QryBusca.FieldValues['dCantidad'];
            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;

            Hoja.Cells[Ren, 7].Select;
            Excel.Selection.NumberFormat := '@';
            Excel.Selection.Value := QryBusca.FieldValues['dPonderado'];
            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;

            Hoja.Cells[Ren, 8].Select;
            Excel.Selection.Value := QryBusca.FieldValues['dFechaInicio'];

            Hoja.Cells[Ren, 9].Select;
            Excel.Selection.Value := QryBusca.FieldValues['dFechaFinal'];
            Inc(Ren);
          end;
          {Programado}
          Inc(Ren);
          i := 1;

          Hoja.Cells[Ren - 1, 9 + i].Select;
          Excel.Selection.Value := 'PROGRAMADO';
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clBlack;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Interior.ColorIndex := 2;

          dFechaInicial2 := dFechaInicial1;
          dCantidad := 0;
          while (dFechaInicial2 <= dFechaFinal1) do
          begin

            QryBusca2.Active := false;
            QryBusca2.SQL.Clear;
            QryBusca2.SQL.Add('select if(dCantidad is null,0,dCantidad) as dCantidad from distribuciondeanexocia where ' +
              ' sContrato=:contrato and sIdConvenio =:convenio  ' +
              ' and sNumeroActividad=:actividad and sWbs =:wbs and dIdFecha=:fecha ');
            QryBusca2.ParamByName('contrato').AsString := global_contrato;
            QryBusca2.ParamByName('convenio').AsString := global_convenio;
            QryBusca2.ParamByName('actividad').AsString := QryBusca.FieldByName('sNumeroActividad').AsString;
            QryBusca2.ParamByName('wbs').AsString := QryBusca.FieldByName('sWbs').AsString;
            QryBusca2.ParamByName('fecha').AsDate := dFechaInicial2;
            QryBusca2.Open;

            Hoja.Cells[Ren - 1, 10 + i].Select;
            Excel.Selection.Value := QryBusca2.FieldByName('dCantidad').AsFloat;
            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Color := clBlack;
            //Excel.Selection.Font.Bold := True;
            Excel.Selection.Interior.ColorIndex := 35;
            dCantidad := dCantidad + QryBusca2.FieldByName('dCantidad').AsFloat;
            dFechaInicial2 := IncDay(dFechaInicial2);
            Inc(i);
          end;
          Hoja.Cells[Ren - 1, 10 + i].Select;
          Excel.Selection.Value := dCantidad;
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clBlack;
          Excel.Selection.Font.Bold := True;
          //Excel.Selection.Interior.ColorIndex := 11;
          {Reportado}
          dCantidad := 0;
          Inc(Ren);
          i := 1;

          Hoja.Cells[Ren - 1, 9 + i].Select;
          Excel.Selection.Value := 'REPORTADO';
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clBlack;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Interior.ColorIndex := 2;


          dFechaInicial2 := dFechaInicial1;
          while (dFechaInicial2 <= dFechaFinal1) do
          begin

            QryBusca2.Active := false;
            QryBusca2.SQL.Clear;
            QryBusca2.SQL.Add('select if(sum(b.dCantidad) is null,0,sum(b.dCantidad)) as dCantidad from bitacoradeactividades  b ' +
              ' inner join actividadesxorden ao on ' +
              '    ao.sContrato=b.sContrato and ao.sNumeroOrden=b.sNumeroOrden and ao.sWbs=b.sWbs and ao.sNumeroActividad=b.sNumeroActividad ' +
              ' where ' +
              '    ao.sContrato=:contrato ' +
              '    and ao.sNumeroActividad=:actividad and ao.sWbsContrato =:wbs and b.dIdFecha=:fecha ' +
              ' group by b.dIdFecha ');
            QryBusca2.ParamByName('contrato').AsString := global_contrato;
            QryBusca2.ParamByName('actividad').AsString := QryBusca.FieldByName('sNumeroActividad').AsString;
            QryBusca2.ParamByName('wbs').AsString := QryBusca.FieldByName('sWbs').AsString;
            QryBusca2.ParamByName('fecha').AsDate := dFechaInicial2;
            QryBusca2.Open;

            Hoja.Cells[Ren - 1, 10 + i].Select;
            Excel.Selection.Value := QryBusca2.FieldByName('dCantidad').AsFloat;
            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Color := clBlack;
            //Excel.Selection.Font.Bold := True;
            Excel.Selection.Interior.ColorIndex := 36;
            dCantidad := dCantidad + QryBusca2.FieldByName('dCantidad').AsFloat;
            dFechaInicial2 := IncDay(dFechaInicial2);
            Inc(i);
          end;
          Hoja.Cells[Ren - 1, 10 + i].Select;
          Excel.Selection.Value := dCantidad;
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clBlack;
          Excel.Selection.Font.Bold := True;
          //Excel.Selection.Interior.ColorIndex := 11;
          {GENERADO}
          dCantidad := 0;
          Inc(Ren);
          i := 1;

          Hoja.Cells[Ren - 1, 9 + i].Select;
          Excel.Selection.Value := 'GENERADO';
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clBlack;
          Excel.Selection.Font.Bold := True;
          Excel.Selection.Interior.ColorIndex := 2;


          dFechaInicial2 := dFechaInicial1;
          while (dFechaInicial2 <= dFechaFinal1) do
          begin

            QryBusca2.Active := false;
            QryBusca2.SQL.Clear;
            QryBusca2.SQL.Add(' select if(sum(dCantidad) is null,0,sum(dCantidad)) as dCantidad from estimacionxpartida  ' +
              ' where ' +
              ' sContrato=:contrato ' +
              ' and sNumeroActividad=:actividad and sWbsContrato =:wbs and dFecha=:fecha ' +
              ' group by dFecha ');
            QryBusca2.ParamByName('contrato').AsString := global_contrato;
            QryBusca2.ParamByName('actividad').AsString := QryBusca.FieldByName('sNumeroActividad').AsString;
            QryBusca2.ParamByName('wbs').AsString := QryBusca.FieldByName('sWbs').AsString;
            QryBusca2.ParamByName('fecha').AsDate := dFechaInicial2;
            QryBusca2.Open;

            Hoja.Cells[Ren - 1, 10 + i].Select;
            Excel.Selection.Value := QryBusca2.FieldByName('dCantidad').AsFloat;
            Excel.Selection.HorizontalAlignment := xlRight;
            Excel.Selection.VerticalAlignment := xlCenter;
            Excel.Selection.Font.Color := clBlack;
            //Excel.Selection.Font.Bold := True;
            Excel.Selection.Interior.ColorIndex := 37;
            dCantidad := dCantidad + QryBusca2.FieldByName('dCantidad').AsFloat;
            dFechaInicial2 := IncDay(dFechaInicial2);
            Inc(i);
          end;
          Hoja.Cells[Ren - 1, 10 + i].Select;
          Excel.Selection.Value := dCantidad;
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Color := clBlack;
          //Excel.Selection.Font.Bold := True;
          //Excel.Selection.Interior.ColorIndex := 11;
          QryBusca.Next();
        end;
      end;
      Hoja.Cells[2, 2].Select;
    end;


  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      try
        Hoja.Name := 'ProgVsRealVsGenOrden'; // + tsNumeroOrden.Text;
      except
        Hoja.Name := 'ProgVsRealVsGenOrden';
      end;
      Excel.ActiveWorkbook.SaveAs(SaveDialog1.FileName);
      DatosPlantilla;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al Generar el Programa de Trabajo:' + #10 + #10 + e.Message;
      end;
    end;

    Result := Resultado;
  end;

begin
    // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
  if not SaveDialog1.Execute then
    Exit;

    // Generar el ambiente de excel
  try
    Excel := CreateOleObject('Excel.Application');
  except
    FreeAndNil(Excel);
    showmessage('No es posible generar el archivo de EXCEL, informe de esto al administrador del sistema.');
    Exit;
  end;

  if MessageDlg('Deseas visualizar el dise�o del Archivo de Excel?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := True;
  end
  else
  begin
    Excel.Visible := True;
    Excel.DisplayAlerts := False;
    Excel.ScreenUpdating := False;
  end;

  Label15.Refresh;
  Label16.Refresh;
 // Label17.Refresh;
 // BarraEstado.Position := 0;

  Libro := Excel.Workbooks.Add; // Crear el libro sobre el que se ha de trabajar

    // Verificar si cuenta con las hojas necesarias
  while Libro.Sheets.Count < 2 do
    Libro.Sheets.Add;

    // Verificar si se pasa de hojas necesarias
  Libro.Sheets[1].Select;
  while Libro.Sheets.Count > 1 do
    Excel.ActiveWindow.SelectedSheets.Delete;

    // Proceder a generar la hoja REPORTE
  CadError := '';

  if GenerarPlantilla then
  begin
        // Grabar el archivo de excel con el nombre dado
    Excel.Visible := True;
    Excel.DisplayAlerts := True;
    Excel.ScreenUpdating := True;
   // PanelProgress.Visible := False;
    messageDlg('El Archivo se gener� Correctamente!', mtInformation, [mbOk], 0);
  end;

  Excel := '';

  if CadError <> '' then
    showmessage(CadError);

end;

procedure TfrmActividadesAnexo2.ConvMayusClick(Sender: TObject);
var
  pos: Tbookmark;
  CAdena: string;
begin

  pos := actividadesxanexo.GetBookmark;
  actividadesxanexo.DisableControls;
  //grid_Actividades.DisableScroll;
  Timer1.Enabled := false;
  label9.Visible := true;
  label9.repaint;
  Progreso.Visible := true;
  Progreso.Min := 1;
  Progreso.Position := 1;

  Progreso.Max := Actividadesxanexo.RecordCount + 1;
  try
    Actividadesxanexo.First;
    while not ActividadesxAnexo.Eof do
    begin
      cadena := Ansiuppercase(Actividadesxanexo.FieldByName('mdescripcion').AsString);
      Actividadesxanexo.Edit;
      Actividadesxanexo.FieldByName('mdescripcion').AsString := Cadena;
      try
        ActividadesxAnexo.Post;
        actualizarTablas(Actividadesxanexo.FieldByName('swbs').AsString, Actividadesxanexo.FieldByName('snumeroactividad').AsString, Actividadesxanexo.FieldByName('sidfase').AsString);
      except
    //continuar sin Mostrar Mensaje de error
      end;
      Progreso.Position := Progreso.Position + 1;

      Actividadesxanexo.Next;
    end;

    try
      actividadesxanexo.GotoBookmark(pos);
    except
      actividadesxanexo.FreeBookmark(pos);
    end;
  finally
    Progreso.Visible := false;
    Actividadesxanexo.EnableControls;
    //grid_Actividades.EnableScroll;
    label9.Visible := false;
    Timer1.Enabled := true;
  end;

end;

procedure TfrmActividadesAnexo2.ConvMinusClick(Sender: TObject);
var
  pos: Tbookmark;
  CAdena, OriginCAdena: string;
  i: integer;
  item: string;
  IniciarMayus: boolean;
begin

  pos := actividadesxanexo.GetBookmark;
  actividadesxanexo.DisableControls;
  //grid_Actividades.DisableScroll;
  Timer1.Enabled := false;
  label9.Visible := true;
  label9.repaint;
  Progreso.Visible := true;
  Progreso.Min := 1;
  Progreso.Position := 1;

  Progreso.Max := Actividadesxanexo.RecordCount + 1;
  try
    Actividadesxanexo.First;
    while not ActividadesxAnexo.Eof do
    begin
      Origincadena := Ansilowercase(Actividadesxanexo.FieldByName('mdescripcion').AsString);
      IniciarMayus := false;
      CAdena := '';
      for I := 1 to length(Origincadena) do
      begin
        if (i = 1) or (Origincadena[i] = '.') then
          IniciarMayus := true;

        if IniciarMayus then
        begin
          if (Origincadena[i] in ['a'..'z', '�', '�', '�', '�', '�', '�']) or (Origincadena[i] in ['A'..'Z', '�', '�', '�', '�', '�', '�']) then
          begin
            item := ansiuppercase(Origincadena[i]);
            IniciarMayus := false;
          end
          else
            item := Ansilowercase(Origincadena[i]);
        end
        else
          item := Ansilowercase(Origincadena[i]);

        cadena := cadena + item;
      end;
      Actividadesxanexo.Edit;
      Actividadesxanexo.FieldByName('mdescripcion').AsString := Cadena;
      try
        ActividadesxAnexo.Post;
        actualizarTablas(Actividadesxanexo.FieldByName('swbs').AsString, Actividadesxanexo.FieldByName('snumeroactividad').AsString, Actividadesxanexo.FieldByName('sidfase').AsString);
      except
    //continuar sin Mostrar Mensaje de error
      end;
      Progreso.Position := Progreso.Position + 1;

      Actividadesxanexo.Next;
    end;

    try
      actividadesxanexo.GotoBookmark(pos);
    except
      actividadesxanexo.FreeBookmark(pos);
    end;
  finally
    Progreso.Visible := false;
    Actividadesxanexo.EnableControls;
    //grid_Actividades.EnableScroll;
    label9.Visible := false;
    Timer1.Enabled := true;
  end;

end;

procedure TfrmActividadesAnexo2.tsNumeroActividadChange(Sender: TObject);
begin
  global_partida := tsNumeroActividad.Text;
end;

procedure TfrmActividadesAnexo2.EliminaAlcancesClick(Sender: TObject);
begin
  if ActividadesxAnexo.FieldValues['dInstalado'] = 0 then
  begin
    connection.zCommand.Active := False;
    connection.zCommand.Filtered := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('Delete from alcancesxactividad where sContrato = :contrato and sWbs=:wbs And sNumeroActividad = :Actividad and sAnexo =:Anexo ');
    connection.zcommand.params.ParamByName('Contrato').DataType := ftString;
    connection.zcommand.params.ParamByName('Contrato').Value := Global_Contrato;
    connection.zcommand.params.ParamByName('Actividad').DataType := ftString;
    connection.zcommand.params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    connection.zcommand.params.ParamByName('wbs').DataType := ftString;
    connection.zcommand.params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
    connection.zcommand.params.ParamByName('Anexo').DataType := ftString;
    connection.zcommand.params.ParamByName('Anexo').Value := ActividadesxAnexo.FieldValues['sAnexo'];
    connection.zCommand.ExecSQL;
    zDetallePartida.Refresh;
  end
  else
    MessageDlg('Se han reportado volumenes afectando a la partida anexo seleccionada, no es posible eliminar los alcances.', mtInformation, [mbOk], 0);

end;

procedure TfrmActividadesAnexo2.tlCalculaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tdPonderado.SetFocus
end;

procedure TfrmActividadesAnexo2.Grid_ActividadesGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  try
    if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
      if ActividadesxAnexo.RecordCount > 0 then
      begin
        AFont.Color := esColor(ActividadesxAnexo.FieldValues['iColor']);

        if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoActividad').AsString = 'Paquete' then
        begin
          Afont.Style := [fsBold];
          Afont.Size := Afont.Size + 1;
          Background := EsBkColor[(Sender as TrxDBGrid).DataSource.DataSet.FieldByName('iNivel').AsInteger + 1]
        end
        else
           if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sWbsPU').AsString <> '' then
           begin
              //Afont.Style := [fsBold];
              //Afont.Size := Afont.Size + 1;
              Background := EsBkColor[(Sender as TrxDBGrid).DataSource.DataSet.FieldByName('iNivel').AsInteger + 1]
           end
           else
              if ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dExcedente').AsFloat > 0) then
              begin
                Afont.Style := [fsBold, fsItalic];
                AFont.Color := clRed;
              end
      end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al cambiar de partida', 0);
    end;
  end;
end;

procedure TfrmActividadesAnexo2.Grid_ActividadesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmActividadesAnexo2.Grid_ActividadesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmActividadesAnexo2.Grid_ActividadesTitleClick(Column: TColumn);
begin
  //UtGrid.DbGridTitleClick(Column);
end;

procedure TfrmActividadesAnexo2.Grid_Actividades_puGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
try
    if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
      if ActividadesxAnexo.RecordCount > 0 then
      begin
        AFont.Color := esColor(ActividadesxAnexo.FieldValues['iColor']);

        if (Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sTipoActividad').AsString = 'Paquete' then
        begin
          Afont.Style := [fsBold];
          Afont.Size := Afont.Size + 1;
          Background := EsBkColor[(Sender as TrxDBGrid).DataSource.DataSet.FieldByName('iNivel').AsInteger + 1]
        end
        else
          if ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('dExcedente').AsFloat > 0) then
          begin
            Afont.Style := [fsBold, fsItalic];
            AFont.Color := clRed;
          end
      end;
  except
    on e: exception do begin
      UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al cambiar de partida', 0);
    end;
  end;
end;

procedure TfrmActividadesAnexo2.Grid_BasicosDblClick(Sender: TObject);
begin
  AgruparPaquete('Basico', basicos.FieldValues['sSimbolo'], basicos.FieldValues['sNumeroPaquete'], 'recursosbasicosnuevos');
end;

procedure TfrmActividadesAnexo2.Grid_BasicosGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
    if Basicos.RecordCount > 0 then
    begin
      AFont.Color := clBlue;
      if ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sSimbolo').AsString = '+') or ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sSimbolo').AsString = '-') then
      begin
        AFont.Color := clBlue;
        Afont.Style := [fsBold];
        Afont.Size := Afont.Size + 1;
        Background := EsBkColor[1];
      end;
    end;
end;

procedure TfrmActividadesAnexo2.Grid_BasicosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid4.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmActividadesAnexo2.Grid_BasicosMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid4.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmActividadesAnexo2.Grid_BasicosTitleClick(Column: TColumn);
begin
  //UtGrid4.DbGridTitleClick(Column);
end;

procedure TfrmActividadesAnexo2.Grid_EquiposMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid6.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmActividadesAnexo2.Grid_EquiposMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid6.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmActividadesAnexo2.Grid_EquiposTitleClick(Column: TColumn);
begin
  //UtGrid6.DbGridTitleClick(Column);
end;

procedure TfrmActividadesAnexo2.Grid_HerramientasDblClick(Sender: TObject);
begin
  AgruparPaquete('Herramienta', herramientas.FieldValues['sSimbolo'], herramientas.FieldValues['sNumeroPaquete'], 'recursosherramientasnuevos');
end;

procedure TfrmActividadesAnexo2.Grid_HerramientasGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Sender as TrxDBGrid).DataSource.DataSet.State = dsBrowse then
    if herramientas.RecordCount > 0 then
    begin
      AFont.Color := clBlue;
      if ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sSimbolo').AsString = '+') or ((Sender as TrxDBGrid).DataSource.DataSet.FieldByName('sSimbolo').AsString = '-') then
      begin
        AFont.Color := clBlue;
        Afont.Style := [fsBold];
        Afont.Size := Afont.Size + 1;
        Background := EsBkColor[1];
      end;
    end;
end;

procedure TfrmActividadesAnexo2.Grid_HerramientasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid3.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmActividadesAnexo2.Grid_HerramientasMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid3.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmActividadesAnexo2.Grid_HerramientasTitleClick(Column: TColumn);
begin
  //UtGrid3.DbGridTitleClick(Column);
end;

procedure TfrmActividadesAnexo2.Grid_InventarioMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid5.dbGridMouseMoveCoord(x, y);
end;

procedure TfrmActividadesAnexo2.Grid_InventarioMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //UtGrid5.DbGridMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmActividadesAnexo2.Grid_InventarioTitleClick(Column: TColumn);
begin
  //UtGrid5.DbGridTitleClick(Column);
end;

procedure TfrmActividadesAnexo2.BuscarPartida1Click(Sender: TObject);
var
  sNumeroPartida: string;
begin
  if ActividadesxAnexo.RecordCount > 0 then
  begin
    sNumeroPartida := UPPERCASE(InputBox('Inteligent', 'Partida a Localizar?', ActividadesxAnexo.FieldValues['sNumeroActividad']));
    ActividadesxAnexo.Locate('sNumeroActividad', sNumeroPartida, [loCaseInsensitive])
  end
end;

procedure TfrmActividadesAnexo2.mnFichaTecnicaClick(Sender: TObject);
begin
   if not FileExists(global_files + global_miReporte + '_rFichaTecnica.fr3') then
   begin
       showmessage('El archivo de reporte '+global_Mireporte+'_rFichaTecnica.fr3 no existe, notifique al administrador del sistema');
       exit;
   end;
   try
     if ActividadesxAnexo.RecordCount > 0 then
        procFichaTecnica(global_contrato, global_convenio, ActividadesxAnexo.FieldValues['sNumeroActividad'], frmActividadesAnexo2);
   except
      on e: exception do begin
         UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al imprimir Ficha Tecnica', 0);
       end;
   end;
end;

procedure TfrmActividadesAnexo2.ActividadesxAnexoAfterInsert(
  DataSet: TDataSet);
begin
  ActividadesxAnexo.FieldValues['iNivel'] := 0;
  ActividadesxAnexo.FieldValues['dCantidadAnexo'] := 1;
  ActividadesxAnexo.FieldValues['dPonderado'] := 0;
  ActividadesxAnexo.FieldValues['dDuracion'] := 0;
  ActividadesxAnexo.FieldValues['iItemOrden'] := '';
end;

procedure TfrmActividadesAnexo2.ActividadesxAnexoCalcFields(
  DataSet: TDataSet);
begin
  if (ActividadesxAnexo.State <> dsEdit) and (ActividadesxAnexo.State <> dsInsert) then
  begin
    ActividadesxAnexodMontoMN.Value := ActividadesxAnexodCantidadAnexo.Value * ActividadesxAnexodVentaMN.Value;
    ActividadesxAnexodMontoDLL.Value := ActividadesxAnexodCantidadAnexo.Value * ActividadesxAnexodVentaDLL.Value;
    if ActividadesxAnexo.FieldValues['sWbs'] <> Null then
      ActividadesxAnexosWbsSpace.Text := espaces(ActividadesxAnexo.FieldValues['iNivel']) + ActividadesxAnexo.FieldValues['sWbs'];
        if ActividadesxAnexo.FieldValues['sWbsPU'] <> '' then
           ActividadesxAnexosWbsSpace.Text := espaces(ActividadesxAnexo.FieldValues['iNivel'] + 2) + ActividadesxAnexo.FieldValues['sWbs'];
  end
end;

procedure TfrmActividadesAnexo2.ActividadesxAnexodPonderadoSetText(
  Sender: TField; const Text: string);
begin
  Sender.Value := abs(strtofloatdef(text, 0));
end;

procedure TfrmActividadesAnexo2.ActividadesxAnexoNewSimbolGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  text := '';
  if (ActividadesxAnexostipoactividad.asstring = 'Paquete') then
    if (Paq.IndexOf(ActividadesxAnexoswbs.asstring) <> -1) then
      text := '+'
    else
      text := '-';
end;

procedure TfrmActividadesAnexo2.ActividadesxAnexosWbsAnteriorChange(
  Sender: TField);
begin
  if (ActividadesxAnexo.State = dsInsert) or (ActividadesxAnexo.State = dsEdit) then
  begin
    if (ActividadesxAnexo.FieldByName('sWBSAnterior').AsString <> '') and
      (ActividadesxAnexo.FieldByName('sWBSAnterior').AsString <> '0') then
    begin
      if Paquetes.RecordCount > 0 then
      begin
        if sProceso = '' then
        begin
          ActividadesxAnexo.FieldValues['dFechaInicio'] := Paquetes.FieldValues['dFechaInicio'];
          ActividadesxAnexo.FieldValues['dDuracion'] := Paquetes.FieldValues['dDuracion'];
          ActividadesxAnexo.FieldValues['dFechaFinal'] := Paquetes.FieldValues['dFechaFinal'];
        end;
        ActividadesxAnexo.FieldValues['iNivel'] := Paquetes.FieldValues['iNivel'] + 1;
        if ActividadesxAnexo.FieldValues['iNivel'] > 0 then
          if not ActividadesxAnexo.FieldByName('sNumeroActividad').IsNull then
            ActividadesxAnexo.FieldValues['sWbs'] := ActividadesxAnexo.FieldValues['sWBSAnterior'] + '.' + Trim(ActividadesxAnexo.FieldValues['sNumeroActividad'])
          else
            ActividadesxAnexo.FieldValues['sWbs'] := ActividadesxAnexo.FieldValues['sWBSAnterior'] + '.' + 'Sin Partida'
        else
          ActividadesxAnexo.FieldValues['sWbs'] := Trim(ActividadesxAnexo.FieldValues['sNumeroActividad']);
      end
    end
    else
    begin
      ActividadesxAnexo.FieldValues['iNivel'] := 0;
      ActividadesxAnexo.FieldValues['iItemOrden'] := '';
      if not ActividadesxAnexo.FieldByName('sNumeroActividad').IsNull then
        ActividadesxAnexo.FieldValues['sWbs'] := Trim(ActividadesxAnexo.FieldValues['sNumeroActividad'])
      else
        ActividadesxAnexo.FieldValues['sWbs'] := 'Sin Partida'
    end
  end

end;

procedure TfrmActividadesAnexo2.tsPaqueteEnter(Sender: TObject);
begin
  tsPaquete.Color := global_color_entradaERP;
end;

procedure TfrmActividadesAnexo2.tsPaqueteExit(Sender: TObject);
begin
  tsPaquete.Color := global_color_salidaERP;
end;

procedure TfrmActividadesAnexo2.tsPaqueteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    tsNumeroActividad.SetFocus
end;

procedure TfrmActividadesAnexo2.tiColoresChange(Sender: TObject);
begin
  case tiColores.ItemIndex of
    0: tiColor.ItemIndex := 0;
    1: tiColor.ItemIndex := 1;
    2: tiColor.ItemIndex := 2;
    3: tiColor.ItemIndex := 3;
    4: tiColor.ItemIndex := 4;
    5: tiColor.ItemIndex := 5;
    6: tiColor.ItemIndex := 6;
    7: tiColor.ItemIndex := 7;
    8: tiColor.ItemIndex := 8;
    9: tiColor.ItemIndex := 9;
    10: tiColor.ItemIndex := 10;
    11: tiColor.ItemIndex := 11;
    12: tiColor.ItemIndex := 12;
    13: tiColor.ItemIndex := 13;
    14: tiColor.ItemIndex := 14;
    15: tiColor.ItemIndex := 15;
  end

end;

procedure TfrmActividadesAnexo2.PaquetesCalcFields(DataSet: TDataSet);
begin
  PaquetessDescripcion.Text := MidStr(Paquetes.FieldValues['mDescripcion'], 1, 80)
end;

procedure TfrmActividadesAnexo2.Paste1Click(Sender: TObject);
begin
  //UtGrid.AddRowsFromClip;
end;

procedure TfrmActividadesAnexo2.Grid_ActividadesDblClick(Sender: TObject);
var
  sCondicion: string;
  sSelect: string;
  inicio, reg: Integer;
  Lugar: Tbookmark;
begin

  if (ActividadesxAnexo.FieldValues['sWbs'] <> NULL) then
  begin
    sCondicion := 'sWbs not Like ' + quotedstr(Trim(ActividadesxAnexo.FieldValues['sWbs']) + '.*');

    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Paquete' then
    begin

      lugar := Actividadesxanexo.GetBookmark;

      reg := Paq.indexof(ActividadesxAnexoswbs.asstring);

      if reg = -1 then
      begin
        if Pos(sCondicion, sFiltro) = 0 then
          if sFiltro <> '' then
            sFiltro := sFiltro + ' and ' + scondicion
          else
            sFiltro := sCondicion;

        Paq.Add(ActividadesxAnexoswbs.asstring);

      end
      else
      begin
        inicio := Pos(sCondicion, sFiltro);

        Paq.Delete(reg);
        if (inicio > 0) then
        begin
          if inicio = 1 then
            sFiltro := MidStr(sFiltro, Length(scondicion) + 6, Length(sFiltro))
          else
            sFiltro := MidStr(sFiltro, 1, inicio - 6) + MidStr(sFiltro, inicio + Length(scondicion), length(sfiltro));
        end;
      end;

      ActividadesxAnexo.Filtered := false;
      ActividadesxAnexo.Filter := sfiltro;
      ActividadesxAnexo.Filtered := true;
      try
        actividadesxanexo.GotoBookmark(lugar);
      finally
        actividadesxanexo.FreeBookmark(lugar);
      end;


    end;
  end;
end;

procedure TfrmActividadesAnexo2.DatalleAlcancesClick(Sender: TObject);
var
  myForm: TForm;
  GridDetallePartida: TRxDBGrid;
  zDSDetallePartida: tDataSource;
begin
  if (ActividadesxAnexo.State <> dsInsert) or (ActividadesxAnexo.State <> dsEdit) then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
    begin
      myForm := TForm.Create(Self);
      try
        myForm.Position := poDesktopCenter;
        myForm.Caption := 'Alcance de Partida ' + ActividadesxAnexo.FieldValues['sNumeroActividad'] + ' "' + MidStr(ActividadesxAnexo.FieldValues['mDescripcion'], 1, 250) + '"';
        MyForm.BorderIcons := [];
        MyForm.Width := 700;
        MyForm.Height := 380;
        MyForm.BorderStyle := bsSingle;
        MyForm.Color := $00FEC6BA;
        MyForm.OnKeyPress := FormKeyPress;

        zDetallePartida := TZQuery.Create(nil);
        zDetallePartida.Connection := connection.zConnection;
        zDetallePartida.Active := False;
        zDetallePartida.Sql.Clear;
        zDetallePartida.Sql.Add('Select * From alcancesxactividad ' +
          'Where sContrato = :Contrato And sNumeroActividad = :Actividad and sWbs=:wbs and sAnexo =:Anexo Order By iFase');
        zDetallePartida.Params.ParamByName('Contrato').DataType := ftString;
        zDetallePartida.Params.ParamByName('Contrato').Value := global_contrato;
        zDetallePartida.Params.ParamByName('Actividad').DataType := ftString;
        zDetallePartida.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
        zDetallePartida.Params.ParamByName('wbs').DataType := ftString;
        zDetallePartida.Params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
        zDetallePartida.Params.ParamByName('Anexo').DataType := ftString;
        zDetallePartida.Params.ParamByName('Anexo').Value := ActividadesxAnexo.FieldValues['sAnexo'];
        zDetallePartida.Open;

        zDetallePartida.afterDelete := AlcancesxActividadAfterDelete;
        zDetallePartida.afterInsert := AlcancesxActividadAfterInsert;
        zDetallePArtida.AfterPost := AlcancesxActividadAfterPost;
        zDetallePartida.BeforePost := AlcancesxActividadBeforePost;
        zDetallePartida.BeforeEdit := AlcancesxActividadBeforeEdit;
        zDSDetallePartida := tDataSource.Create(nil);
        zDSDetallePartida.DataSet := zDetallePartida;
        zDSDetallePartida.AutoEdit := True;
        BotonPermiso1 := TBotonesPermisos.Create(Self, connection.zConnection, global_grupo, 'cAnexo', zDetallePartida);

        GridDetallePartida := TRxDBGrid.Create(MyForm);
        with GridDetallePartida do
        begin
          Parent := myForm;
          Visible := True;
          Align := alCustom;
          Options := [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit];
          TitleButtons := True;
          DataSource := zDSDetallePartida;
          Width := 700;
          Height := 330;
          Anchors := [akLeft, akTop, akRight, akBottom];
          ParentColor := True;
          Ctl3D := False;

          Columns.Clear;
          Columns.Add;
          Columns[0].FieldName := 'iFase';
          Columns[0].Width := 50;
          Columns[0].Title.Caption := 'Fase';
          Columns[0].Font.Style := [fsBold];
          Columns[0].Font.Color := clBlue;
          Columns.Add;
          Columns[1].FieldName := 'sDescripcion';
          Columns[1].Width := 490;
          Columns[1].Title.Caption := 'Descripcion';
          Columns[1].Font.Style := [fsBold];
          Columns[1].Font.Color := clBlue;
          Columns.Add;
          Columns[2].FieldName := 'dAvance';
          Columns[2].Width := 80;
          Columns[2].Title.Caption := 'Avance';
          Columns[2].Font.Style := [fsBold];
          Columns[2].Font.Color := clBlue;
        end;

        with TButton.Create(Self) do
        begin
          Left := 10;
          Top := 310;
          Width := 120;
          Height := 35;
          ModalResult := mrNone;
          Default := False;
          Parent := MyForm;
          OnClick := CopiarAlcances1Click;
          Caption := '&Copiar Alcances';
        end;
        with TButton.Create(Self) do
        begin
          Left := 130;
          Top := 310;
          Width := 120;
          Height := 35;
          ModalResult := mrNone;
          Default := False;
          Parent := MyForm;
          OnClick := PegarAlcances1Click;
          Caption := '&Pegar Alcances';
          Enabled := BotonPermiso.agregar;
        end;
        with TButton.Create(Self) do
        begin
          Left := 250;
          Top := 310;
          Width := 120;
          Height := 35;
          ModalResult := mrNone;
          Default := False;
          Parent := MyForm;
          OnClick := EliminaAlcancesClick;
          Caption := '&Eliminar Alcances';
          Enabled := BotonPermiso.borrar;
        end;
        with TButton.Create(Self) do
        begin
          Left := 370;
          Top := 310;
          Width := 120;
          Height := 35;
          ModalResult := mrOk;
          Default := True;
          Parent := MyForm;
          Caption := 'Cerra Consulta'
        end;

        with TLabel.Create(Self) do
        begin
          Left := 550;
          Top := 350;
          Width := 120;
          Height := 35;
          Parent := MyForm;
          Caption := 'Av. General :';
          Anchors := [akRight, akBottom];
        end;
        tdAvance := tCurrencyEdit.Create(Self);
        with tdAvance do
        begin
          Left := 615;
          Top := 320;
          Width := 70;
          Height := 35;
          Parent := MyForm;
          DecimalPlaces := 2;
          DisplayFormat := '##0.0# %';
          Anchors := [akRight, akBottom];
          Enabled := False;
        end;

        SumAvance.Active := False;
        SumAvance.Params.ParamByName('Contrato').DataType := ftString;
        SumAvance.Params.ParamByName('Contrato').Value := global_contrato;
        SumAvance.Params.ParamByName('Actividad').DataType := ftString;
        SumAvance.Params.ParamByName('Actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
        SumAvance.Params.ParamByName('wbs').DataType := ftString;
        SumAvance.Params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
        SumAvance.Open;
        if SumAvance.RecordCount > 0 then
          tdAvance.Value := SumAvance.FieldValues['dAvance']
        else
          tdAvance.Value := 0;

        myForm.ShowModal;
      finally
        GridDetallePartida.Destroy;
        zDetallePartida.Destroy;
        zDSDetallePartida.Destroy;
        myForm.Free;
      end;
    end;

end;

procedure TfrmActividadesAnexo2.AlcancesxActividadAfterPost(
  DataSet: TDataSet);
begin
  SumAvance.refresh;
  if SumAvance.RecordCount > 0 then
    tdAvance.Value := SumAvance.FieldValues['dAvance']
  else
    tdAvance.Value := 0;
end;

procedure TfrmActividadesAnexo2.AlcancesxActividadAfterDelete(
  DataSet: TDataSet);
begin
  SumAvance.refresh;
  if SumAvance.RecordCount > 0 then
    tdAvance.Value := SumAvance.FieldValues['dAvance']
  else
    tdAvance.Value := 0;
end;

procedure TfrmActividadesAnexo2.BtnMaterialesClick(Sender: TObject);
begin
  frmbarra1.btnCancel.Click;
  btnCancel.Click;
  NxPCAnexo.ActivePageIndex := 2;
end;


procedure TfrmActividadesAnexo2.btnDetalleClick(Sender: TObject);
begin
  tNewGroupBox1.Caption := 'Detalle de Conceptos';
  NxPCAnexo.ActivePageIndex := 0;
end;

procedure TfrmActividadesAnexo2.BtnFasesClick(Sender: TObject);
var
  myForm: TForm;
  GridDetallePartida: TRxDBGrid;
  zDSDetallePartida: tDataSource;
  boton1, boton2, boton3: TButton;
  etiqueta1: TLabel;
begin
  NxPCAnexo.ActivePageIndex := 1;
  frmbarra1.btnCancel.Click;
  btnCancel.Click;
end;

procedure TfrmActividadesAnexo2.BtnEquipoClick(Sender: TObject);
begin
  frmbarra1.btnCancel.Click;
  btnCancel.Click;
  NxPCAnexo.ActivePageIndex := 3;
end;

procedure TfrmActividadesAnexo2.BtnExplosionClick(Sender: TObject);
begin
    frmbarra1.btnCancel.Click;
    btnCancel.Click;
    NxPCAnexo.ActivePageIndex := 7;
end;

procedure TfrmActividadesAnexo2.BtnPersonalClick(Sender: TObject);
begin
  frmbarra1.btnCancel.Click;
  btnCancel.Click;
  NxPCAnexo.ActivePageIndex := 2;
end;

procedure TfrmActividadesAnexo2.BtnHerramientaClick(Sender: TObject);
begin
  frmbarra1.btnCancel.Click;
  btnCancel.Click;
  NxPCAnexo.ActivePageIndex := 4;
end;

procedure TfrmActividadesAnexo2.PonderarConceptosClick(Sender: TObject);
var
  dMontoContratoMN: Currency;
  dMontoContratoDLL: Currency;
  dPonderadoAjuste,
    Difer, Ponderado,
    decPonderado, Suma: Extended;
  scalcula: string;
begin
  scalcula := 'Si';
    //Inicia proceso de estructura del proyecto ...
  if ActividadesxAnexo.RecordCount > 0 then
    if MessageDlg('Desea Ponderar los Conceptos del Contrato Seleccionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
        // Que ponderados se calcularan ?
        // Sumo todos las partidas anexo que tengan en lCalculo <> Si

      Connection.zCommand.Active := False;
      connection.zCommand.Filtered := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('update actividadesxanexo SET dPonderado = 0 ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio and lCalculo = "Si" ');
      connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
      connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
      connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
      connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
      connection.zCommand.ExecSQL;

       (* Connection.QryBusca.Active := False ;
        Connection.QryBusca.Filtered := False;
        Connection.QryBusca.SQL.Clear ;
        Connection.QryBusca.SQL.Add('Select SUM(dPonderado) as TotalPonderado from actividadesxanexo Where sContrato = :contrato ' +
                                    'And sIdConvenio = :Convenio And lCalculo = :Calculo And sTipoActividad = "Actividad" Group By sContrato' ) ;
        Connection.QryBusca.Params.ParamByName('contrato').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('contrato').Value := global_contrato ;
        Connection.QryBusca.Params.ParamByName('convenio').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('convenio').Value := global_convenio ;
        Connection.QryBusca.Params.ParamByName('Calculo').DataType := ftString ;
        Connection.QryBusca.Params.ParamByName('Calculo').Value := 'No' ;
        Connection.QryBusca.Open ;
         *)
      dPonderadoAjuste := 100;
      (*  If (Connection.QryBusca.RecordCount > 0) And (Connection.QryBusca.FieldValues['TotalPonderado'] > 0 ) Then
              dPonderadoAjuste :=  Connection.QryBusca.FieldValues ['TotalPonderado'] ;
        *)
        // Actualizacion de ponderados ....
      dMontoContrato := 0;
      Connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('Select sum(dCantidadAnexo * dVentaMN) as dMontoMN From actividadesxanexo ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" and lcalculo=:Calculo group by sContrato');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.QryBusca.Params.ParamByName('Calculo').AsString := sCalcula;
      Connection.QryBusca.Open;
      if Connection.QryBusca.RecordCount > 0 then
        dMontoContratoMN := Connection.QryBusca.FieldValues['dMontoMN'];

      if connection.configuracion.FieldValues['lCalculoPonderado'] = 'Financiero' then
      begin
        if dMontoContratoMN > 0 then
        begin
          connection.zCommand.Active := False;
          connection.zCommand.Filtered := False;
          connection.zCommand.SQL.Clear;
          connection.zCommand.SQL.Add('update actividadesxanexo SET dPonderado = (((dCantidadAnexo * dVentaMN) / :montocontrato) * :miMaximoPonderado) ' +
            'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" and dCantidadAnexo <> 0 ' +
            'and lcalculo=:calculo');
          connection.zcommand.params.ParamByName('Contrato').DataType := ftString;
          connection.zcommand.params.ParamByName('Contrato').Value := global_contrato;
          connection.zcommand.params.ParamByName('Convenio').DataType := ftString;
          connection.zcommand.params.ParamByName('Convenio').Value := global_convenio;
          connection.zcommand.params.ParamByName('montocontrato').DataType := ftFloat;
          connection.zcommand.params.ParamByName('montocontrato').Value := dMontoContratoMN;
          connection.zcommand.params.ParamByName('miMaximoPonderado').DataType := ftFloat;
          connection.zcommand.params.ParamByName('miMaximoPonderado').Value := dPonderadoAjuste;
          connection.zcommand.params.ParamByName('Calculo').AsString := sCalcula;
          connection.zCommand.ExecSQL;
        end;
      end
      else
        if connection.configuracion.FieldValues['lCalculoPonderado'] = 'Duracion' then
        begin
                //Calculo el monto del programa ...
          Connection.QryBusca.Active := False;
          Connection.QryBusca.Filtered := False;
          Connection.QryBusca.SQL.Clear;
          Connection.QryBusca.SQL.Add('Select sum(dDuracion) as dDuracionTotal From actividadesxanexo ' +
            'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
            'and lcalculo=:calculo group by sContrato');
          Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
          Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
          Connection.QryBusca.Params.ParamByName('Calculo').AsString := sCalcula;
          Connection.QryBusca.Open;
          if connection.QryBusca.RecordCount > 0 then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.Filtered := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Text := 'select * from actividadesxanexo where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" and dDuracion <> 0 ' +
              'and lcalculo=:calculo order by iItemOrden';
            connection.zcommand.params.ParamByName('Contrato').DataType := ftString;
            connection.zcommand.params.ParamByName('Contrato').Value := global_contrato;
            connection.zcommand.params.ParamByName('Convenio').DataType := ftString;
            connection.zcommand.params.ParamByName('Convenio').Value := global_convenio;
            connection.zcommand.params.ParamByName('Calculo').AsString := scalcula;
            connection.zCommand.Open;

            Difer := 0; // Diferencia para ajuste entre partidas
            Ponderado := 0; // Almacenamiento de ponderado total calculado
            Suma := 0;
            while not Connection.zCommand.Eof do
            begin
              Ponderado := (Connection.zCommand.FieldByName('dDuracion').AsFloat / Connection.QryBusca.FieldValues['dDuracionTotal']);
              Ponderado := Ponderado + Difer; // Sumar la diferencia anterior para ajuste autom�tico
              decPonderado := Trunc(Ponderado * 1000000) / 1000000;
              Difer := Ponderado - decPonderado;
              decPonderado := decPonderado * dPonderadoAjuste;

              Suma := Suma + decPonderado;

              if (Connection.zCommand.RecNo = Connection.zCommand.RecordCount) and (Suma <> dPonderadoAjuste) then
                decPonderado := decPonderado + (dPonderadoAjuste - Suma);

              Connection.zCommand.Edit;
              Connection.zCommand.FieldByName('dPonderado').AsFloat := decPonderado;
              Connection.zCommand.Post;

              Connection.zCommand.Next;
            end;
          end;
        end
        else
        begin
                // Primero el Financiero MN
          dMontoContrato := 0;
          Connection.qryBusca.Active := False;
          Connection.QryBusca.Filtered := False;
          Connection.qryBusca.SQL.Clear;
          Connection.qryBusca.SQL.Add('Select sum(dCantidadAnexo * dVentaMN) as dMontoMN From actividadesxanexo ' +
            'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
            'and lcalculo=:calculo group by sContrato');
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
          Connection.qryBusca.Params.ParamByName('Calculo').AsString := scalcula;
          Connection.qryBusca.Open;
          if Connection.qryBusca.RecordCount > 0 then
            dMontoContratoMN := Connection.qryBusca.FieldValues['dMontoMN'];

          if dMontoContratoMN > 0 then
          begin
            Connection.QryBusca2.Active := False;
            connection.QryBusca2.Filtered := False;
            Connection.QryBusca2.SQL.Clear;
            Connection.QryBusca2.SQL.Add('select dCantidadAnexo, dVentaMN, sWbs from actividadesxanexo ' +
              'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" And dCantidadAnexo <> 0 ' +
              'and lcalculo=:calculo');
            connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
            connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
            connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString;
            connection.QryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
            connection.QryBusca2.Params.ParamByName('Calculo').AsString := scalcula;
            connection.QryBusca2.Open;

            while not connection.QryBusca2.Eof do
            begin
              Connection.zCommand.Active := False;
              connection.zCommand.Filtered := False;
              Connection.zCommand.SQL.Clear;
              Connection.zCommand.SQL.Add('update actividadesxanexo SET dPonderado = :ponderado ' +
                'Where sContrato = :Contrato And sIdConvenio = :Convenio And sWbs =:Wbs and sTipoActividad = "Actividad" ' +
                'and lcalculo=:calculo');
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
              connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
              connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
              connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
              connection.zCommand.Params.ParamByName('Wbs').Value := connection.QryBusca2.FieldValues['sWbs'];
              connection.zCommand.Params.ParamByName('ponderado').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('ponderado').Value := (((connection.QryBusca2.FieldByName('dCantidadAnexo').AsFloat * connection.QryBusca2.FieldByName('dVentaMN').AsFloat) / dMontoContratoMN) * dPonderadoAjuste);
              connection.zCommand.Params.ParamByName('calculo').AsString := sCalcula;
              connection.zCommand.ExecSQL;
              connection.QryBusca2.Next;
            end;
          end;

                // Primero el Financiero DLL
          dMontoContrato := 0;
          Connection.qryBusca.Active := False;
          Connection.QryBusca.Filtered := False;
          Connection.qryBusca.SQL.Clear;
          Connection.qryBusca.SQL.Add('Select sum(dCantidadAnexo * dVentaDLL) as dMontoDLL From actividadesxanexo ' +
            'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
            'and lcalculo=:calculo group by sContrato');
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
          Connection.qryBusca.Params.ParamByName('Calculo').AsString := sCalcula;
          Connection.qryBusca.Open;
          if Connection.qryBusca.RecordCount > 0 then
            dMontoContratoDLL := Connection.qryBusca.FieldValues['dMontoDLL'];

          if dMontoContratoDLL > 0 then
          begin
            Connection.QryBusca2.Active := False;
            connection.QryBusca2.Filtered := False;
            Connection.QryBusca2.SQL.Clear;
            Connection.QryBusca2.SQL.Add('select dCantidadAnexo, dVentaDLL, sWbs, dPonderado from actividadesxanexo ' +
              'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" And dCantidadAnexo <> 0 ' +
              'and lcalculo=:calculo');
            connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
            connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
            connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString;
            connection.QryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
            connection.QryBusca2.Params.ParamByName('Calculo').AsString := sCalcula;
            connection.QryBusca2.Open;

            while not connection.QryBusca2.Eof do
            begin
              Connection.zCommand.Active := False;
              connection.zCommand.Filtered := False;
              Connection.zCommand.SQL.Clear;
              Connection.zCommand.SQL.Add('update actividadesxanexo SET dPonderado = :ponderado ' +
                'Where sContrato = :Contrato And sIdConvenio = :Convenio And sWbs =:Wbs and sTipoActividad = "Actividad" ' +
                'and lcalculo=:calculo');
              connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
              connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
              connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
              connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
              connection.zCommand.Params.ParamByName('Wbs').DataType := ftString;
              connection.zCommand.Params.ParamByName('Wbs').Value := connection.QryBusca2.FieldValues['sWbs'];
              connection.zCommand.Params.ParamByName('ponderado').DataType := ftFloat;
              connection.zCommand.Params.ParamByName('ponderado').Value := (connection.QryBusca2.FieldByName('dPonderado').AsFloat +
                (((connection.QryBusca2.FieldByName('dCantidadAnexo').AsFloat * connection.QryBusca2.FieldByName('dVentaDLL').AsFloat)
                / dMontoContratoMN) * dPonderadoAjuste)) / 2;
              connection.zCommand.Params.ParamByName('calculo').AsString := sCalcula;
              connection.zCommand.ExecSQL;
              connection.QryBusca2.Next;
            end;
          end;
                // Fisico en Moneda Nacional
                //Calculo el monto del programa ...
          Connection.qryBusca.Active := False;
          Connection.QryBusca.Filtered := False;
          Connection.qryBusca.SQL.Clear;
          Connection.qryBusca.SQL.Add('Select sum(dDuracion) as dDuracionTotal From actividadesxanexo ' +
            'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
            'and lcalculo=:calculo group by sContrato');
          Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
          Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
          Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
          Connection.qryBusca.Params.ParamByName('Calculo').AsString := scalcula;
          Connection.qryBusca.Open;
               // Connection.qryBusca.Open ;
          if connection.qryBusca.RecordCount > 0 then
          begin
            Connection.zCommand.Active := False;
            connection.zCommand.Filtered := False;
            Connection.zCommand.SQL.Clear;
            Connection.zCommand.SQL.Add('update actividadesxanexo SET dPonderado = (dPonderado + (((dDuracion / :duracioncontrato) * :miMaximoPonderado)) / 2) ' +
              'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" and dDuracion <> 0 ' +
              'and lcalculo=:calculo');
            connection.zCommand.Params.ParamByName('Contrato').DataType := ftString;
            connection.zCommand.Params.ParamByName('Contrato').Value := global_contrato;
            connection.zCommand.Params.ParamByName('Convenio').DataType := ftString;
            connection.zCommand.Params.ParamByName('Convenio').Value := global_convenio;
            connection.zCommand.Params.ParamByName('duracioncontrato').DataType := ftFloat;
            connection.zCommand.Params.ParamByName('duracioncontrato').Value := Connection.qryBusca.FieldValues['dDuracionTotal'];
            connection.zcommand.params.ParamByName('miMaximoPonderado').DataType := ftFloat;
            connection.zcommand.params.ParamByName('miMaximoPonderado').Value := dPonderadoAjuste;
            connection.zCommand.Params.ParamByName('Calculo').AsString := sCalcula;
            connection.zCommand.ExecSQL;
          end
        end;


      Connection.QryBusca2.Active := False;
      Connection.QryBusca2.SQL.Clear;
      Connection.QryBusca2.SQL.Add('Select Distinct sWBS From actividadesxanexo ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Paquete" Order By iNivel DESC');
      Connection.QryBusca2.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.QryBusca2.Params.ParamByName('Convenio').DataType := ftString;
      Connection.QryBusca2.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.QryBusca2.Open;
      while not Connection.QryBusca2.Eof do
      begin
        Connection.QryBusca.Active := False;
        Connection.QryBusca.Filtered := False;
        Connection.QryBusca.SQL.Clear;
        Connection.QryBusca.SQL.Add('Select Min(dFechaInicio) as dFechaInicio, Max(dFechaFinal) as dFechaFinal, sum(dPonderado) as dPonderado, ' +
          'sum(dCantidadAnexo * dVentaMN) as dMontoMN, sum(dCantidadAnexo * dVentaDLL) as dMontoDLL From actividadesxanexo ' +
          'Where sContrato = :Contrato And sIdConvenio = :Convenio And sWBSAnterior = :Paquete ' +
          'and lcalculo=:calculo Group By sWBSAnterior');
        Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
        Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
        Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
        Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
        Connection.QryBusca.Params.ParamByName('Paquete').DataType := ftString;
        Connection.QryBusca.Params.ParamByName('Paquete').Value := Connection.QryBusca2.FieldValues['sWBS'];
        Connection.QryBusca.Params.ParamByName('calculo').AsString := sCalcula;
        Connection.QryBusca.Open;
        if Connection.QryBusca.RecordCount > 0 then
          if (not Connection.QryBusca.FieldByName('dFechaInicio').IsNull) and (not Connection.QryBusca.FieldByName('dFechaFinal').IsNull) then
          begin
            connection.zCommand.Active := False;
            connection.zCommand.Filtered := False;
            connection.zCommand.SQL.Clear;
            connection.zCommand.SQL.Add('Update actividadesxanexo SET dFechaInicio = :Inicio, dFechaFinal = :Final, dPonderado = :Ponderado, dVentaMN = :MontoMN, dVentaDLL = :MontoDLL ' +
              'Where sContrato = :Contrato And sIdConvenio = :Convenio And ' +
              'sWBS = :Paquete And sTipoActividad = "Paquete"');
            connection.zcommand.params.ParamByName('Contrato').DataType := ftString;
            connection.zcommand.params.ParamByName('Contrato').Value := global_contrato;
            connection.zcommand.params.ParamByName('Convenio').DataType := ftString;
            connection.zcommand.params.ParamByName('Convenio').Value := global_convenio;
            connection.zcommand.params.ParamByName('Paquete').DataType := ftString;
            connection.zcommand.params.ParamByName('Paquete').Value := Connection.QryBusca2.FieldValues['sWBS'];
            connection.zcommand.params.ParamByName('Inicio').DataType := ftDate;
            connection.zcommand.params.ParamByName('Inicio').Value := Connection.QryBusca.FieldValues['dFechaInicio'];
            connection.zcommand.params.ParamByName('Final').DataType := ftDate;
            connection.zcommand.params.ParamByName('Final').Value := Connection.QryBusca.FieldValues['dFechaFinal'];
            connection.zcommand.params.ParamByName('Ponderado').DataType := ftFloat;
            if roundTo(Connection.QryBusca.FieldValues['dPonderado'], -2) >= 100 then
              connection.zcommand.params.ParamByName('Ponderado').Value := 100
            else
              connection.zcommand.params.ParamByName('Ponderado').Value := Connection.QryBusca.FieldValues['dPonderado'];
            connection.zcommand.params.ParamByName('MontoMN').DataType := ftFloat;
            connection.zcommand.params.ParamByName('MontoMN').Value := Connection.QryBusca.FieldValues['dMontoMN'];
            connection.zcommand.params.ParamByName('MontoDLL').DataType := ftFloat;
            connection.zcommand.params.ParamByName('MontoDLL').Value := Connection.QryBusca.FieldValues['dMontoDLL'];
            Connection.zCommand.ExecSQL;
          end;
        Connection.QryBusca2.Next
      end;


      dMontoContratoDLL := 0;
      Connection.qryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      Connection.qryBusca.SQL.Clear;
      Connection.qryBusca.SQL.Add('Select sum(dCantidadAnexo * dVentaDLL) as dMontoDLL From actividadesxanexo ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio And sTipoActividad = "Actividad" ' +
        'and lcalculo=:calculo group by sContrato');
      Connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
      Connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.qryBusca.Params.ParamByName('Calculo').AsString := sCalcula;
      Connection.qryBusca.Open;
      if Connection.qryBusca.RecordCount > 0 then
        dMontoContratoDLL := Connection.qryBusca.FieldValues['dMontoDLL'];

      Connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      Connection.QryBusca.SQL.Clear;
      Connection.QryBusca.SQL.Add('Select dFechaInicio, dFechaFinal From actividadesxanexo ' +
        'Where sContrato = :Contrato And sIdConvenio = :Convenio And iNivel = 0');
      Connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      Connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      Connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      Connection.QryBusca.Open;


      if Connection.QryBusca.RecordCount > 0 then
      begin
            //Actualizo el convenio
        connection.zCommand.Active := False;
        connection.zCommand.Filtered := False;
        connection.zCommand.SQL.Clear;
        connection.zCommand.SQL.Add('Update convenios SET dFechaInicio = :Inicio, dFechaFinal = :Final, dMontoMN = :MontoMN, dMontoDLL = :MontoDLL ' +
          'Where sContrato = :Contrato And sIdConvenio = :Convenio');
        connection.zcommand.params.ParamByName('Contrato').DataType := ftString;
        connection.zcommand.params.ParamByName('Contrato').Value := global_contrato;
        connection.zcommand.params.ParamByName('Convenio').DataType := ftString;
        connection.zcommand.params.ParamByName('Convenio').Value := global_convenio;
        connection.zcommand.params.ParamByName('Inicio').DataType := ftDate;
        connection.zcommand.params.ParamByName('Inicio').Value := Connection.QryBusca.FieldValues['dFechaInicio'];
        connection.zcommand.params.ParamByName('Final').DataType := ftDate;
        connection.zcommand.params.ParamByName('Final').Value := Connection.QryBusca.FieldValues['dFechaFinal'];
        connection.zcommand.params.ParamByName('MontoMN').DataType := ftFloat;
        connection.zcommand.params.ParamByName('MontoMN').Value := dMontoContratoMN;
        connection.zcommand.params.ParamByName('MontoDLL').DataType := ftFloat;
        connection.zcommand.params.ParamByName('MontoDLL').Value := dMontoContratoDLL;
        Connection.zCommand.ExecSQL;
      end;
      frmBarra1.btnRefresh.Click
    end;
  ActividadesxAnexo.Refresh;

end;

procedure TfrmActividadesAnexo2.PopupPrincipalPopup(Sender: TObject);
begin
  popupprincipal.Items.Find('Convertir Descripciones a May�sculas').Enabled := false;
  popupprincipal.Items.Find('Convertir Descripciones a Min�sculas').Enabled := false;
  if Actividadesxanexo.recordcount > 0 then
  begin
    popupprincipal.Items.Find('Convertir Descripciones a May�sculas').Enabled := true;
    popupprincipal.Items.Find('Convertir Descripciones a Min�sculas').Enabled := true;
  end;
end;

procedure TfrmActividadesAnexo2.ProgramacionDiariadelConceptodelaCia1Click(
  Sender: TObject);
begin
  ProgramarActividad();
end;

procedure TfrmActividadesAnexo2.ProgramarActividad();
var
  FechaInicial, FechaFinal: TDateTime;
  iNumeroDias: Integer;
  dCantidad: Double;
  dAjuste: Double;
  lProgramarDias: Boolean;
  lReprogramarDias: Boolean;
begin
  FechaInicial := 0;
  FechaFinal := 0;
  Connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('select min(dIdFecha)  as fecha from distribuciondeanexocia  ' +
    ' where sContrato =:contrato and sIdConvenio=:convenio ' +
    ' and sWbs=:wbs and sNumeroActividad=:actividad ');
  Connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
  Connection.QryBusca.ParamByName('convenio').AsString := ActividadesxAnexo.FieldByName('sIdConvenio').AsString;
  Connection.QryBusca.ParamByName('wbs').AsString := ActividadesxAnexo.FieldByName('sWbs').AsString;
  Connection.QryBusca.ParamByName('actividad').AsString := ActividadesxAnexo.FieldByName('sNumeroActividad').AsString;
  Connection.QryBusca.Open;
  if Connection.QryBusca.RecordCount > 0 then
  begin
    FechaInicial := Connection.QryBusca.FieldByName('fecha').AsDateTime;
  end;

  Connection.QryBusca.Active := False;
  Connection.QryBusca.SQL.Clear;
  Connection.QryBusca.SQL.Add('select max(dIdFecha) as fecha  from distribuciondeanexocia  ' +
    ' where sContrato =:contrato and  sIdConvenio=:convenio ' +
    ' and sWbs=:wbs and sNumeroActividad=:actividad  ');
  Connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
  Connection.QryBusca.ParamByName('convenio').AsString := ActividadesxAnexo.FieldByName('sIdConvenio').AsString;
  Connection.QryBusca.ParamByName('wbs').AsString := ActividadesxAnexo.FieldByName('sWbs').AsString;
  Connection.QryBusca.ParamByName('actividad').AsString := ActividadesxAnexo.FieldByName('sNumeroActividad').AsString;

  Connection.QryBusca.Open;
  if Connection.QryBusca.RecordCount > 0 then
  begin
    FechaFinal := Connection.QryBusca.FieldByName('fecha').AsDateTime;
  end;

  lProgramarDias := False;
  lReprogramarDias := False;
//si no hay programacion diaria crearla
  if (FechaInicial = 0) or (FechaFinal = 0) then
  begin
    if MessageDlg('No existe programacion diaria para este concepto, desea crearla ahora?', mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
      FechaInicial := ActividadesxAnexo.FieldByName('dFechaInicio').AsDateTime;
      FechaFinal := ActividadesxAnexo.FieldByName('dFechaFinal').AsDateTime;
      iNumeroDias := DaysBetween(FechaFinal, FechaInicial) + 1;
      lProgramarDias := True;
      if ActividadesxAnexo.FieldByName('dCantidadAnexo').AsFloat > 0 then
        dCantidad := ActividadesxAnexo.FieldByName('dCantidadAnexo').AsFloat / iNumeroDias
      else
        dCantidad := 0;
    end;
  end;

//si hay programacion , pero el rango de fechas difiere del que tiene la partida actualmente
  if
    (not lProgramarDias) and
    (
    (FechaInicial <> ActividadesxAnexo.FieldByName('dFechaInicio').AsDateTime)
    or
    (FechaFinal <> ActividadesxAnexo.FieldByName('dFechaFinal').AsDateTime)
    )
    then
  begin
    if MessageDlg('La programacion actual difiere de las fechas de inicio y termino de la actividad, desea reprogramar?' + chr(10) +
      '[Las nuevas cantidades se anexan en ceros,las que estan fuera de ese rango de fechas se borran]', mtInformation, [mbYes, mbNo], 0) = mrYes then
    begin
      FechaInicial := ActividadesxAnexo.FieldByName('dFechaInicio').AsDateTime;
      FechaFinal := ActividadesxAnexo.FieldByName('dFechaFinal').AsDateTime;
      iNumeroDias := DaysBetween(FechaFinal, FechaInicial);
      lReprogramarDias := True;
      dCantidad := 0;
      //borrar la programacion diaria que esta arriba de la fecha maxima actual
      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('delete from distribuciondeanexocia  ' +
        ' where sContrato =:contrato  and sIdConvenio=:convenio ' +
        ' and sWbs=:wbs and sNumeroActividad=:actividad and dIdFecha >:fechamaxima');
      Connection.zCommand.ParamByName('contrato').AsString := global_contrato;
      Connection.zCommand.ParamByName('convenio').AsString := ActividadesxAnexo.FieldByName('sIdConvenio').AsString;
      Connection.zCommand.ParamByName('wbs').AsString := ActividadesxAnexo.FieldByName('sWbs').AsString;
      Connection.zCommand.ParamByName('actividad').AsString := ActividadesxAnexo.FieldByName('sNumeroActividad').AsString;
      Connection.zCommand.ParamByName('fechamaxima').AsDateTime := FechaFinal;
      Connection.zCommand.ExecSQL;

      //borrar la programacion diaria que esta arriba de la fecha minima actual
      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('delete from distribuciondeanexocia  ' +
        ' where sContrato =:contrato and sIdConvenio=:convenio ' +
        ' and sWbs=:wbs and sNumeroActividad=:actividad and dIdFecha <:fechamaxima');
      Connection.zCommand.ParamByName('contrato').AsString := global_contrato;
      Connection.zCommand.ParamByName('convenio').AsString := ActividadesxAnexo.FieldByName('sIdConvenio').AsString;
      Connection.zCommand.ParamByName('wbs').AsString := ActividadesxAnexo.FieldByName('sWbs').AsString;
      Connection.zCommand.ParamByName('actividad').AsString := ActividadesxAnexo.FieldByName('sNumeroActividad').AsString;
      Connection.zCommand.ParamByName('fechamaxima').AsDateTime := FechaInicial;
      Connection.zCommand.ExecSQL;
    end;
  end;


  if (lProgramarDias) or (lReprogramarDias) then
  begin
    dAjuste := 0;
    while (FechaInicial <= FechaFinal) do
    begin
      if (FechaInicial = FechaFinal) and lProgramarDias then
      begin
        Connection.QryBusca.Active := False;
        Connection.QryBusca.SQL.Clear;
        Connection.QryBusca.SQL.Add('select sum(dCantidad) as dSuma from distribuciondeanexocia ' +
          ' where sContrato =:contrato  and sIdConvenio=:convenio ' +
          ' and sWbs=:wbs and sNumeroActividad=:actividad  ');
        Connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
        Connection.QryBusca.ParamByName('convenio').AsString := ActividadesxAnexo.FieldByName('sIdConvenio').AsString;
        Connection.QryBusca.ParamByName('wbs').AsString := ActividadesxAnexo.FieldByName('sWbs').AsString;
        Connection.QryBusca.ParamByName('actividad').AsString := ActividadesxAnexo.FieldByName('sNumeroActividad').AsString;
        Connection.QryBusca.Open;
        dAjuste := Connection.QryBusca.FieldByName('dSuma').AsFloat;

        dCantidad := ActividadesxAnexo.FieldByName('dCantidadAnexo').AsFloat - dAjuste;

        if dCantidad < 0 then dCantidad := dCantidad * (-1);
      end;
      Connection.zCommand.Active := False;
      Connection.zCommand.SQL.Clear;
      Connection.zCommand.SQL.Add('insert into distribuciondeanexocia set ' +
        '  sContrato = :contrato ,' +
        '  sIdConvenio = :convenio,' +
        '  dIdFecha =:fecha ,' +
        '  sWbs =:wbs,' +
        '  sNumeroActividad=:actividad,' +
        '  dCantidad = :Cantidad on duplicate key update dIdFecha=:fecha');
      Connection.zCommand.ParamByName('contrato').AsString := ActividadesxAnexo.FieldByName('sContrato').AsString;
      Connection.zCommand.ParamByName('convenio').AsString := ActividadesxAnexo.FieldByName('sIdConvenio').AsString;
      Connection.zCommand.ParamByName('wbs').AsString := ActividadesxAnexo.FieldByName('sWbs').AsString;
      Connection.zCommand.ParamByName('actividad').AsString := ActividadesxAnexo.FieldByName('sNumeroActividad').AsString;
      Connection.zCommand.ParamByName('fecha').AsDateTime := FechaInicial;
      Connection.zCommand.ParamByName('Cantidad').AsFloat := dCantidad;
      Connection.zCommand.ExecSql;
      FechaInicial := incday(FechaInicial);
    end

  end;

  application.CreateForm(TfrmProgramacionPartidasCia, frmProgramacionPartidasCia);

  frmProgramacionPartidasCia.QryDetalle.Active := False;
  frmProgramacionPartidasCia.QryDetalle.SQL.Clear;
  frmProgramacionPartidasCia.QryDetalle.SQL.Add('select * from distribuciondeanexocia where ' +
    ' sContrato=:contrato ' +
    ' and sIdConvenio=:convenio ' +
    ' and sWbs=:wbs ' +
    ' and sNumeroActividad=:actividad ' +
    ' order by dIdFecha ');
  frmProgramacionPartidasCia.QryDetalle.ParamByName('contrato').AsString := ActividadesxAnexo.FieldByName('sContrato').AsString;
  frmProgramacionPartidasCia.QryDetalle.ParamByName('convenio').AsString := ActividadesxAnexo.FieldByName('sIdConvenio').AsString;
  frmProgramacionPartidasCia.QryDetalle.ParamByName('wbs').AsString := ActividadesxAnexo.FieldByName('sWbs').AsString;
  frmProgramacionPartidasCia.QryDetalle.ParamByName('actividad').AsString := ActividadesxAnexo.FieldByName('sNumeroActividad').AsString;
  frmProgramacionPartidasCia.QryDetalle.Open;

  frmProgramacionPartidasCia.lblDescripcion.Caption := ActividadesxAnexo.FieldByName('mDescripcion').AsString;
  frmProgramacionPartidasCia.FechaInicial.Caption := datetostr(ActividadesxAnexo.FieldByName('dFechaInicio').AsDateTime);
  frmProgramacionPartidasCia.FechaFinal.Caption := datetostr(ActividadesxAnexo.FieldByName('dFechaFinal').AsDateTime);
  frmProgramacionPartidasCia.lblPartida.Caption := ActividadesxAnexo.FieldByName('sNumeroActividad').AsString;


  frmProgramacionPartidasCia.Visible := False;
  frmProgramacionPartidasCia.ShowModal;

  frmProgramacionPartidasCia.Destroy;

end;

procedure TfrmActividadesAnexo2.mnHeredaClick(Sender: TObject);
begin
  connection.zCommand.Active := False;
  connection.zCommand.Filtered := False;
  connection.zCommand.SQL.Clear;
  if MessageDlg('Desea Actualizar las Cantidades a Instalar = a las Cantidades Anexo?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    connection.zCommand.SQL.Add('update actividadesxanexo a, actividadesxorden b SET b.dFechaInicio = a.dFechaInicio, b.dFechaFinal = a.dFechaFinal, b.dDuracion = a.dDuracion, b.dVentaMN = a.dVentaMN, b.dVentaDLL = a.dVentaDLL ' +
      'Where a.sContrato =b.sContrato And a.sIdConvenio = b.sIdConvenio And a.sNumeroActividad = b.sNumeroActividad And ' +
      'b.sTipoActividad = a.sTipoActividad and a.sWbs = b.sWbsContrato And a.sTipoActividad = "Actividad" And a.sContrato = :contrato And a.sIdConvenio = :convenio')
  else
    connection.zCommand.SQL.Add('update actividadesxanexo a, actividadesxorden b SET b.dFechaInicio = a.dFechaInicio, b.dFechaFinal = a.dFechaFinal, b.dCantidad = a.dCantidadAnexo, ' +
      'b.dDuracion = a.dDuracion, b.dVentaMN = a.dVentaMN, b.dVentaDLL = a.dVentaDLL ' +
      'Where a.sContrato =b.sContrato And a.sIdConvenio = b.sIdConvenio And a.sNumeroActividad = b.sNumeroActividad And ' +
      'b.sTipoActividad = a.sTipoActividad and a.sWbs = b.sWbsContrato And a.sTipoActividad = "Actividad" And a.sContrato = :contrato And a.sIdConvenio = :convenio');
  connection.zcommand.params.ParamByName('Contrato').DataType := ftString;
  connection.zcommand.params.ParamByName('Contrato').Value := global_contrato;
  connection.zcommand.params.ParamByName('Convenio').DataType := ftString;
  connection.zcommand.params.ParamByName('Convenio').Value := global_convenio;
  Connection.zCommand.ExecSQL;
end;

procedure TfrmActividadesAnexo2.NxPCAnexoChange(Sender: TObject);
var
  myForm: TForm;
  GridDetallePartida: TRxDBGrid;
  zDSDetallePartida: tDataSource;
  boton1, boton2, boton3: TButton;
  etiqueta1: TLabel;
begin
  case NxPCAnexo.ActivePageIndex of
    0: begin
{$REGION 'Informacion General'}

{$ENDREGION}
      end;
    1: begin
{$REGION 'Fases x Partida'}
      subactividades.Active := False;
      subactividades.Sql.Clear;
      subactividades.Sql.Add('Select * From alcancesxactividad ' +
        'Where sContrato = :Contrato and sIdConvenio =:Convenio And sWbs=:wbs and sNumeroActividad = :Actividad and sSimbolo <> "*"');
      subactividades.Params.ParamByName('Contrato').DataType  := ftString;
      subactividades.Params.ParamByName('Contrato').Value     := global_contrato;
      subactividades.Params.ParamByName('Convenio').DataType  := ftString;
      subactividades.Params.ParamByName('Convenio').Value     := global_convenio;
      subactividades.Params.ParamByName('Actividad').DataType := ftString;
      subactividades.Params.ParamByName('Actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'];
      subactividades.Params.ParamByName('wbs').DataType       := ftString;
      subactividades.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'];
      subactividades.Open;
{$ENDREGION}
      end;
    2: begin
{$REGION 'Personal'}
        personal.Active := False;
        personal.Params.ParamByName('contrato').DataType := ftString;
        personal.Params.ParamByName('contrato').Value := global_contrato;
        personal.Params.ParamByName('wbs').DataType := ftString;
        personal.Params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
        personal.Params.ParamByName('actividad').DataType := ftString;
        personal.Params.ParamByName('actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
        personal.Open;
{$ENDREGION}

        inventario.Active := False;
        inventario.Params.ParamByName('contrato').DataType := ftString;
        inventario.Params.ParamByName('contrato').Value := global_contrato;
        inventario.Params.ParamByName('wbs').DataType := ftString;
        inventario.Params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
        inventario.Params.ParamByName('actividad').DataType := ftString;
        inventario.Params.ParamByName('actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
        inventario.Open;
      end;
    3: begin
{$REGION 'Equipo'}
        equipos.Active := False;
        equipos.Params.ParamByName('contrato').DataType := ftString;
        equipos.Params.ParamByName('contrato').Value := global_contrato;
        equipos.Params.ParamByName('wbs').DataType := ftString;
        equipos.Params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
        equipos.Params.ParamByName('actividad').DataType := ftString;
        equipos.Params.ParamByName('actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
        equipos.Open;
{$ENDREGION}
      end;
    4: begin
{$REGION 'Herramienta'}
        herramientas.Active := False;
        herramientas.Params.ParamByName('contrato').DataType := ftString;
        herramientas.Params.ParamByName('contrato').Value := global_contrato;
        herramientas.Params.ParamByName('wbs').DataType := ftString;
        herramientas.Params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
        herramientas.Params.ParamByName('actividad').DataType := ftString;
        herramientas.Params.ParamByName('actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
        herramientas.Open;
{$ENDREGION}
      end;
    5: begin
{$REGION 'Materiales'}
        inventario.Active := False;
        inventario.Params.ParamByName('contrato').DataType := ftString;
        inventario.Params.ParamByName('contrato').Value := global_contrato;
        inventario.Params.ParamByName('wbs').DataType := ftString;
        inventario.Params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
        inventario.Params.ParamByName('actividad').DataType := ftString;
        inventario.Params.ParamByName('actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
        inventario.Open;
{$ENDREGION}
      end;
    6: begin
{$REGION 'Basicos'}
        basicos.Active := False;
        basicos.Params.ParamByName('contrato').DataType := ftString;
        basicos.Params.ParamByName('contrato').Value := global_contrato;
        basicos.Params.ParamByName('wbs').DataType := ftString;
        basicos.Params.ParamByName('wbs').Value := ActividadesxAnexo.FieldValues['sWbs'];
        basicos.Params.ParamByName('actividad').DataType := ftString;
        basicos.Params.ParamByName('actividad').Value := ActividadesxAnexo.FieldValues['sNumeroActividad'];
        basicos.Open;
{$ENDREGION}
      end;
    7: begin
{$REGION 'Explosion'}

{$ENDREGION}
      end;
    8: begin
      end;
   end;
end;

procedure TfrmActividadesAnexo2.NxPCAnexoChanging(Sender: TObject;
  PageIndex: Integer; var AllowChange: Boolean);
begin
  if IsOpen then
    if (ActividadesxAnexo.State in [dsinsert, dsedit]) or (Actividadesxanexo.RecordCount = 0) then
      AllowChange := false;
end;

//soad -> Asignacion de Wbs por seleccion multiple..
//*****************************************************

procedure TfrmActividadesAnexo2.mdGraficaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept := DataSet.FieldByName('sWbs').AsString = fWbs;
end;

procedure TfrmActividadesAnexo2.MenuDosPopup(Sender: TObject);
begin
  if NxPCAnexo.ActivePageIndex = 5 then
    InsertarCatalogodeMateriales1.Visible := True
  else
    InsertarCatalogodeMateriales1.Visible := False;
end;

procedure TfrmActividadesAnexo2.MenuItem1Click(Sender: TObject);
begin
  if NxPCAnexo.ActivePageIndex = 2 then
  begin
    Application.CreateForm(TfrmPaquetePersonal, frmPaquetePersonal);
    frmPaquetePersonal.show;
  end;

  if NxPCAnexo.ActivePageIndex = 4 then
  begin
    Application.CreateForm(Tfrmpaqueteherramientas, frmpaqueteherramientas);
    frmpaqueteherramientas.show
  end;

  if NxPCAnexo.ActivePageIndex = 6 then
  begin
    Application.CreateForm(Tfrmpaquetebasicos, frmpaquetebasicos);
    frmpaquetebasicos.show
  end;
  ActualizaSentencias;
end;

{soad -> Funcion implementada para actualizar las Wbs de las partidas en todo el contrato..}

procedure TfrmActividadesAnexo2.BuscaWbs(dParamWbsAnt: string; dParamActividadAnt: string; dParamWbs: string; dParamActividad: string; dParamTipo: string; dParamDescrip: string; dParamMedida: string; dParamVentaMN: Double; dParamVentaDLL: Double; dParamCostoMN: Double; dParamCostoDLL: Double; dParamAnexoAnt, dParamAnexo: string; dParamMensaje: Boolean);
var
  tabla, sWbs, cadena: string;
  datos: array[1..50, 1..2] of string;
  i, x: Integer;
  mensaje: string;
begin
     {Wbs,Actividad,Tipo,Descripcion,Convenio}
  datos[1][1] := 'actividadesxorden';

     {Wbs,Actividad,Tipo,Descripcion}
  datos[2][1] := 'actividadesxestimacion';
  datos[3][1] := 'estimacion_actividades';

     {Wbs,Actividad,Convenio}
  datos[4][1] := 'anexosmensuales';
  datos[5][1] := 'distribuciondeanexo';

     {Wbs,Actividad}
  datos[6][1] := 'estimacionxpartida';
  datos[7][1] := 'ordendecambio_p';
  datos[8][1] := 'recursosanexo';
  datos[9][1] := 'recursosanexosnuevos';
  datos[10][1] := 'recursosbasicos';
  datos[11][1] := 'recursosbasicosnuevos';
  datos[12][1] := 'recursosequipo';
  datos[13][1] := 'recursosequiposnuevos';
  datos[14][1] := 'recursosherramientas';
  datos[15][1] := 'recursosherramientasnuevos';
  datos[16][1] := 'recursospersonal';
  datos[17][1] := 'recursospersonalnuevos';
  datos[18][1] := 'recursosinventario';

     {Actividad}//Se agrega Wbs  a estas tablas
  datos[19][1] := 'actividadesxpena';
  datos[20][1] := 'ajustesxmes';
  datos[21][1] := 'ajustesxmes';
  datos[22][1] := 'anexo_psuministro';
  datos[23][1] := 'fichatecnica';
  datos[24][1] := 'isometricos_partidas';
  datos[25][1] := 'rpersonal';

     {Actividad,Descripcion}
  datos[26][1] := 'bitacoradeactividades';
  datos[27][1] := 'bitacoradealcances';

     {se agrega sWbs  a alcancesxactividad, pero la actualizacion
     se hace a traves de claves foraneas }

  i := 27;
     // Actualiza todos los registros..
  if i > 1 then
  begin
    progreso.Visible := True;
    progreso.Min := 1;
    progreso.Position := 1;
    progreso.Max := i;
    for x := 1 to i do
    begin
      tabla := datos[x][1];

      if x >= 1 then
      begin
        cadena := ' set sWbsContrato=:Wbs,sNumeroActividad=:Actividad,mDescripcion =:Descrip,sMedida=:Medida,dCostoMN =:CostoMN,dCostoDLL=:CostoDLL,dVentaMN=:VentaMN,dVentaDLL=:VentaDLL,sAnexo=:Anexo ';
        sWbs := ' and sIdConvenio =:Convenio and sWbsContrato =:WbsCont and sNumeroActividad =:ActividadCont and sTipoActividad =:Tipo ';
      end;

      if x >= 2 then
      begin
        cadena := ' set sWbs=:Wbs,sNumeroActividad=:Actividad,mDescripcion =:Descrip ';
        sWbs := ' and sWbs =:WbsCont and sNumeroActividad =:ActividadCont and sTipoActividad =:Tipo ';
      end;

      if x >= 4 then
      begin
        cadena := ' set sWbs=:Wbs,sNumeroActividad=:Actividad ';
        sWbs := ' and sIdConvenio =:Convenio and sWbs =:WbsCont and sNumeroActividad =:ActividadCont ';
      end;

      if x >= 6 then
      begin
        if x = 6 then
          cadena := ' set sWbsContrato=:Wbs,sNumeroActividad=:Actividad '
        else
          cadena := ' set sWbs=:Wbs,sNumeroActividad=:Actividad ';
        sWbs := ' and sWbs =:WbsCont and sNumeroActividad =:ActividadCont ';
      end;

      if x >= 26 then
      begin
        cadena := ' set sNumeroActividad=:Actividad, mDescripcion =:Descrip ';

        if x = 26 then
           sWbs := ' and sNumeroActividad =:ActividadCont and sIdTipoMovimiento <> "G" '
        else
          sWbs := ' and sNumeroActividad =:ActividadCont  ';
      end;

      connection.qryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.qryBusca.SQL.Clear;
      connection.qryBusca.SQL.Add('update ' + tabla + cadena + ' where sContrato =:Contrato ' + sWbs);
      connection.qryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.qryBusca.Params.ParamByName('ActividadCont').DataType := ftString;
      connection.qryBusca.Params.ParamByName('ActividadCont').Value := dParamActividadAnt;
      connection.qryBusca.Params.ParamByName('Actividad').DataType := ftString;
      connection.qryBusca.Params.ParamByName('Actividad').Value := dParamActividad;
      if x = 1 then
      begin
        connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
        connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Wbs').Value := dParamWbs;
        connection.qryBusca.Params.ParamByName('WbsCont').DataType := ftString;
        connection.qryBusca.Params.ParamByName('WbsCont').Value := dParamWbsAnt;
        connection.qryBusca.Params.ParamByName('Tipo').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Tipo').Value := dParamTipo;
        connection.qryBusca.Params.ParamByName('Medida').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Medida').Value := dParamMedida;
        connection.qryBusca.Params.ParamByName('Descrip').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Descrip').Value := dParamDescrip;
        connection.qryBusca.Params.ParamByName('CostoMN').DataType := ftFloat;
        connection.qryBusca.Params.ParamByName('CostoMN').Value := dParamCostoMN;
        connection.qryBusca.Params.ParamByName('CostoDLL').DataType := ftFloat;
        connection.qryBusca.Params.ParamByName('CostoDLL').Value := dParamCostoDLL;
        connection.qryBusca.Params.ParamByName('VentaMN').DataType := ftFloat;
        connection.qryBusca.Params.ParamByName('VentaMN').Value := dParamVentaMN;
        connection.qryBusca.Params.ParamByName('VentaDLL').DataType := ftFloat;
        connection.qryBusca.Params.ParamByName('VentaDLL').Value := dParamVentaDLL;
        connection.qryBusca.Params.ParamByName('Anexo').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Anexo').Value := dParamAnexo;
      end;
      if (x >= 2) and (x <= 3) then
      begin
        connection.qryBusca.Params.ParamByName('WbsCont').DataType := ftString;
        connection.qryBusca.Params.ParamByName('WbsCont').Value := dParamWbsAnt;
        connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Wbs').Value := dParamWbs;
        connection.qryBusca.Params.ParamByName('Tipo').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Tipo').Value := dParamTipo;
        connection.qryBusca.Params.ParamByName('Descrip').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Descrip').Value := dParamDescrip;
      end;
      if (x >= 4) and (x <= 5) then
      begin
        connection.qryBusca.Params.ParamByName('Convenio').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Convenio').Value := global_convenio;
        connection.qryBusca.Params.ParamByName('WbsCont').DataType := ftString;
        connection.qryBusca.Params.ParamByName('WbsCont').Value := dParamWbsAnt;
        connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Wbs').Value := dParamWbs;
      end;
      if (x >= 6) and (x <= 25) then
      begin
        connection.qryBusca.Params.ParamByName('WbsCont').DataType := ftString;
        connection.qryBusca.Params.ParamByName('WbsCont').Value := dParamWbsAnt;
        connection.qryBusca.Params.ParamByName('Wbs').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Wbs').Value := dParamWbs;
      end;
      if x >= 26 then
      begin
        connection.qryBusca.Params.ParamByName('Descrip').DataType := ftString;
        connection.qryBusca.Params.ParamByName('Descrip').Value := dParamDescrip;
      end;
      connection.qryBusca.ExecSQL;
      progreso.Position := progreso.Position + x;
    end;

  end;
  if dParamMensaje then
    messageDLG('Proceso Terminado con Exito', mtInformation, [mbOk], 0);
  label9.Visible := False;
  progreso.Visible := False;
end;


procedure TfrmActividadesAnexo2.PersonalAfterDelete(DataSet: TDataSet);
begin
  Global_RefrescaPU := True;
  if ActividadesxAnexo.RecordCount > 0 then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
     // CalculoPU(ActividadesxAnexo.FieldValues['sWbs'], ActividadesxAnexo.FieldValues['sNumeroActividad'])
    else
      personal.Cancel
  else
    personal.Cancel;
end;

procedure TfrmActividadesAnexo2.PersonalAfterInsert(DataSet: TDataSet);
begin
  if not BotonPermiso2.agregar then
    exit;
  if ActividadesxAnexo.RecordCount > 0 then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
    begin
      personal.Edit;
      personal.FieldValues['sContrato'] := global_contrato;
      personal.FieldValues['sWbs'] := actividadesxanexo.FieldValues['sWbs'];
      personal.FieldValues['sNumeroActividad'] := actividadesxanexo.FieldValues['sNumeroActividad'];
      personal.FieldValues['sSimbolo'] := '';
      personal.FieldValues['fila'] := 0;
      personal.FieldValues['sNumeroPaquete'] := '';
      personal.Post;
    end
    else
      personal.Cancel
  else
    personal.Cancel
end;

procedure TfrmActividadesAnexo2.PersonalAfterPost(DataSet: TDataSet);
begin
  DespuesInsertado('recursospersonalnuevos');
end;

procedure TfrmActividadesAnexo2.PersonalsIdPersonalChange(Sender: TField);
var
  sDescripcion: string;
begin
  if not Personal.FieldByName('sIdPersonal').IsNull then
  begin
    connection.qryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.qryBusca.SQL.Clear;
    connection.qryBusca.SQL.Add('select sDescripcion, dVentaMN, dVentaDLL, sMedida from personal where sContrato = :contrato And sIdPersonal = :personal');
    connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
    connection.qryBusca.Params.ParamByName('personal').DataType := ftString;
    connection.qryBusca.Params.ParamByName('personal').Value := personal.FieldValues['sIdPersonal'];
    connection.qryBusca.Open;
    if connection.qryBusca.RecordCount > 0 then
    begin
      PersonalsDescripcion.Text := connection.qryBusca.FieldValues['sDescripcion'];
      personal.FieldValues['dCostoMN'] := connection.qryBusca.FieldValues['dVentaMN'];
      personal.FieldValues['dCostoDLL'] := connection.qryBusca.FieldValues['dVentaDLL'];
      sMedidaPU := connection.qryBusca.FieldValues['sMedida'];
      PersonaldCantidad.FocusControl;
    end
    else
      if (Personal.State = dsInsert) or (Personal.State = dsEdit) then
        if Trim(Personal.FieldValues['sIdPersonal']) <> '' then
        begin
          bandera := 4;
          sDescripcion := '%' + Trim(UpperCase(Personal.FieldValues['sIdPersonal'])) + '%';
          BuscaObjeto.Active := False;
          BuscaObjeto.SQL.Clear;
          BuscaObjeto.SQL.Add('Select sDescripcion, sIdPersonal as Id, dVentaMN, dVentaDLL, "" as Almacen, sMedida from personal ' +
            'Where sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion');
          BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Contrato').Value := global_contrato;
          BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion;
          BuscaObjeto.Open;
          Panel.Visible := True;
          ListaObjeto.SetFocus
        end
  end;
end;

procedure TfrmActividadesAnexo2.pgAnexoChange(Sender: TObject);
begin
   chkFiltroTodo.Checked := False;
   mostrarTodos;
end;

procedure TfrmActividadesAnexo2.equiposAfterDelete(DataSet: TDataSet);
begin
  Global_RefrescaPU := True;
  if ActividadesxAnexo.RecordCount > 0 then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
      //CalculoPU(ActividadesxAnexo.FieldValues['sWbs'], ActividadesxAnexo.FieldValues['sNumeroActividad'])
    else
      personal.Cancel
  else
    personal.Cancel;
end;

procedure TfrmActividadesAnexo2.equiposAfterInsert(DataSet: TDataSet);
begin
  if ActividadesxAnexo.RecordCount > 0 then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
    begin
      equipos.FieldValues['sContrato'] := global_contrato;
      equipos.FieldValues['sWbs'] := actividadesxanexo.FieldValues['sWbs'];
      equipos.FieldValues['sNumeroActividad'] := actividadesxanexo.FieldValues['sNumeroActividad'];
      equipos.Post;
    end
    else
      equipos.Cancel
  else
    equipos.Cancel
end;

procedure TfrmActividadesAnexo2.equiposAfterPost(DataSet: TDataSet);
begin
  Global_RefrescaPU := True;
  if Actividadesxanexo.FieldValues['sTipoActividad'] = 'Actividad' then
    //CalculoPU(ActividadesxAnexo.FieldValues['sWbs'], ActividadesxAnexo.FieldValues['sNumeroActividad']);
end;

procedure TfrmActividadesAnexo2.inventarioAfterDelete(DataSet: TDataSet);
begin
  Global_RefrescaPU := True;
  if ActividadesxAnexo.RecordCount > 0 then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
      //CalculoPU(ActividadesxAnexo.FieldValues['sWbs'], ActividadesxAnexo.FieldValues['sNumeroActividad'])
    else
      inventario.Cancel
  else
    inventario.Cancel;
end;

procedure TfrmActividadesAnexo2.inventarioAfterInsert(
  DataSet: TDataSet);
begin
  if ActividadesxAnexo.RecordCount > 0 then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
    begin
      inventario.Edit;
      inventario.FieldValues['sContrato'] := global_contrato;
      inventario.FieldValues['sWbs'] := actividadesxanexo.FieldValues['sWbs'];
      inventario.FieldValues['sNumeroActividad'] := actividadesxanexo.FieldValues['sNumeroActividad'];
      inventario.post;
    end
    else
      inventario.Cancel
  else
    inventario.Cancel
end;

procedure TfrmActividadesAnexo2.inventarioAfterPost(DataSet: TDataSet);
begin
  Global_RefrescaPU := True;
  if Actividadesxanexo.FieldValues['sTipoActividad'] = 'Actividad' then
    //CalculoPU(ActividadesxAnexo.FieldValues['sWbs'], ActividadesxAnexo.FieldValues['sNumeroActividad'])
end;

procedure TfrmActividadesAnexo2.equipossIdEquipoChange(Sender: TField);
var
  sDescripcion: string;
begin
  if not equipos.FieldByName('sIdEquipo').IsNull then
  begin
    connection.qryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.qryBusca.SQL.Clear;
    connection.qryBusca.SQL.Add('select sDescripcion, dVentaMN, dVentaDLL, sMedida from equipos where sContrato = :contrato And sIdEquipo = :equipo');
    connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
    connection.qryBusca.Params.ParamByName('equipo').DataType := ftString;
    connection.qryBusca.Params.ParamByName('equipo').Value := equipos.FieldValues['sIdEquipo'];
    connection.qryBusca.Open;
    if connection.qryBusca.RecordCount > 0 then
    begin
      equipossDescripcion.Text := connection.qryBusca.FieldValues['sDescripcion'];
      equipos.FieldValues['dCostoMN'] := connection.qryBusca.FieldValues['dVentaMN'];
      equipos.FieldValues['dCostoDLL'] := connection.qryBusca.FieldValues['dVentaDLL'];
      equiposdCantidad.FocusControl;
    end
    else
      if (equipos.State = dsInsert) or (equipos.State = dsEdit) then
        if Trim(equipos.FieldValues['sIdEquipo']) <> '' then
        begin
          bandera := 4;
          sDescripcion := '%' + Trim(UpperCase(equipos.FieldValues['sIdEquipo'])) + '%';
          BuscaObjeto.Active := False;
          BuscaObjeto.SQL.Clear;
          BuscaObjeto.SQL.Add('Select sIdEquipo as Id, sDescripcion, dVentaMN, dVentaDLL, "" as Almacen, sMedida from equipos Where ' +
            'sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion');
          BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Contrato').Value := global_contrato;
          BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion;
          BuscaObjeto.Open;
          Panel.Visible := True;
          ListaObjeto.SetFocus;
        end;
  end;
end;

procedure TfrmActividadesAnexo2.ListaObjetoDblClick(Sender: TObject);
begin
  if NxPCAnexo.ActivePageIndex = 5 then
    Grid_Inventario.SetFocus;
end;

procedure TfrmActividadesAnexo2.ListaObjetoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Panel.Visible = True then
  begin
    if Key = #27 then
    begin
      if NxPCAnexo.ActivePageIndex = 2 then
        Personal.cancel
      else
        if NxPCAnexo.ActivePageIndex = 3 then
          Equipos.Cancel
        else
          if NxPCAnexo.ActivePageIndex = 5 then
            Inventario.Cancel
          else
            if NxPCAnexo.ActivePageIndex = 6 then
              Basicos.Cancel
            else
              if NxPCAnexo.ActivePageIndex = 4 then
                Herramientas.Cancel;

      Panel.Visible := False;
    end;
  end;

  if Panel.Visible = True then
    if Key = #13 then
          if NxPCAnexo.ActivePageIndex = 5 then
            Grid_Inventario.SetFocus

end;

procedure TfrmActividadesAnexo2.ListaObjetoExit(Sender: TObject);
begin
  if Panel.Visible = True then
  begin
    Panel.Visible := False;

    if BuscaObjeto.RecordCount > 0 then
    begin
      if NxPCAnexo.ActivePageIndex = 2 then
      begin
        if (Personal.State = dsInsert) or (Personal.State = dsEdit) then
        begin
          personal.FieldValues['sIdPersonal'] := BuscaObjeto.FieldValues['Id'];
          personal.FieldValues['dCostoMN'] := BuscaObjeto.FieldValues['dVentaMN'];
          personal.FieldValues['dCostoDLL'] := BuscaObjeto.FieldValues['dVentaDLL'];
          sMedidaPU := BuscaObjeto.FieldValues['sMedida'];
        end
      end
      else
        if NxPCAnexo.ActivePageIndex = 3 then
        begin
          if (Equipos.State = dsInsert) or (Equipos.State = dsEdit) then
          begin
            Equipos.FieldValues['sIdEquipo'] := BuscaObjeto.FieldValues['Id'];
            Equipos.FieldValues['dCostoMN'] := BuscaObjeto.FieldValues['dVentaMN'];
            Equipos.FieldValues['dCostoDLL'] := BuscaObjeto.FieldValues['dVentaDLL'];
          end
        end
        else
          if NxPCAnexo.ActivePageIndex = 5 then
          begin
            if (inventario.State = dsInsert) or (inventario.State = dsEdit) then
            begin
              inventario.FieldValues['sIdInsumo'] := BuscaObjeto.FieldValues['Id'];
              inventario.FieldValues['dCostoMN'] := BuscaObjeto.FieldValues['dVentaMN'];
              inventario.FieldValues['dCostoDLL'] := BuscaObjeto.FieldValues['dVentaDLL'];
            end
          end
          else
            if NxPCAnexo.ActivePageIndex = 6 then
            begin
              if (basicos.State = dsInsert) or (basicos.State = dsEdit) then
              begin
                basicos.FieldValues['sIdBasico'] := BuscaObjeto.FieldValues['Id'];
                basicos.FieldValues['dCostoMN'] := BuscaObjeto.FieldValues['dVentaMN'];
                basicos.FieldValues['dCostoDLL'] := BuscaObjeto.FieldValues['dVentaDLL'];
                sMedidaPU := BuscaObjeto.FieldValues['sMedida'];
              end
            end
            else
              if NxPCAnexo.ActivePageIndex = 4 then
              begin
                if (herramientas.State = dsInsert) or (herramientas.State = dsEdit) then
                begin
                  herramientas.FieldValues['sIdHerramientas'] := BuscaObjeto.FieldValues['Id'];
                  herramientas.FieldValues['dCostoMN'] := BuscaObjeto.FieldValues['dVentaMN'];
                  herramientas.FieldValues['dCostoDLL'] := BuscaObjeto.FieldValues['dVentaDLL'];
                  sMedidaPU := BuscaObjeto.FieldValues['sMedida'];
                end
              end
    end
  end
end;

procedure TfrmActividadesAnexo2.inventariosIdInventarioChange(Sender: TField);
var
  sDescripcion: string;
begin
  if not inventario.FieldByName('sIdInsumo').IsNull then
  begin
    connection.qryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.qryBusca.SQL.Clear;
    connection.qryBusca.SQL.Add('select sIdInsumo, substr(mDescripcion,1,255) as sDescripcion, dVentaMN, dVentaDLL, sMedida from insumos where sContrato =:Contrato and sIdInsumo =:inventario ');
    connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
    connection.qryBusca.Params.ParamByName('inventario').DataType := ftString;
    connection.qryBusca.Params.ParamByName('inventario').Value := inventario.FieldValues['sIdInsumo'];
    connection.qryBusca.Open;
    if connection.qryBusca.RecordCount > 0 then
    begin
      inventariosDescripcion.Text := MidStr(connection.qryBusca.FieldValues['sDescripcion'], 1, 255);
      inventariodCostoMN.Text := connection.qryBusca.FieldValues['dVentaMN'];
      inventariodCostoDLL.Text := connection.qryBusca.FieldValues['dVentaDLL'];
      inventariodCantidad.FocusControl;
    end
    else
      if (inventario.State = dsInsert) or (inventario.State = dsEdit) then
        if Trim(inventario.FieldValues['sIdInsumo']) <> '' then
        begin
          bandera := 5;
          sDescripcion := '%' + Trim(UpperCase(inventario.FieldValues['sIdInsumo'])) + '%';
          BuscaObjeto.Active := False;
          BuscaObjeto.SQL.Clear;
          BuscaObjeto.SQL.Add('Select i.sIdInsumo as Id, substr(i.mDescripcion,1,255) as sDescripcion, i.dVentaMN, ' +
            'i.dVentaDLL, a.sDescripcion as Almacen, sMedida from insumos i ' +
            'left join almacenes a on (i.sIdAlmacen = a.sIdAlmacen) ' +
            'Where i.sContrato =:Contrato and i.mDescripcion Like :Descripcion Order by sDescripcion');
          BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Contrato').Value := global_contrato;
          BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion;
          BuscaObjeto.Open;
          Panel.Visible := True;
          ListaObjeto.SetFocus
        end
  end
end;

procedure TfrmActividadesAnexo2.inventarioBeforePost(DataSet: TDataSet);
begin
    //Procedimiento para no ingresar numero negativos
  PCAbsoluto(Inventario, 'dCantidad');
  PCAbsoluto(Inventario, 'dCostoMN');
  PCAbsoluto(Inventario, 'dCostoDLL');

  if (inventario.FieldValues['sIdInsumo'] = Null) then
    abort
  else
  begin
    if inventario.State = dsInsert then
    begin
      connection.zCommand.Active := False;
      connection.zCommand.Filtered := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('Select sIdInsumo from recursosanexosnuevos where sContrato =:Contrato and sWbs =:Wbs and sNumeroActividad =:Actividad and sIdInsumo =:Id ');
      connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
      connection.zCommand.ParamByName('Wbs').AsString := ActividadesxAnexo.FieldValues['sWbs'];
      connection.zCommand.ParamByName('Actividad').AsString := ActividadesxAnexo.FieldValues['sNumeroActividad'];
      connection.zCommand.ParamByName('Id').AsString := inventario.FieldValues['sIdInsumo'];
      connection.zCommand.Open;

      if connection.zCommand.RecordCount > 0 then
      begin
        messageDLG('EL Material ya existe, Favor de Verificar.', mtInformation, [mbOk], 0);
        abort;
        exit;
      end;
    end;
    CantidadRecurso := inventario.FieldByName('dCantidad').AsFloat;
    CostoRecursoMN := inventario.FieldByName('dCostoMN').AsFloat;
    CostoRecursoDLL := inventario.FieldByName('dCostoDLL').AsFloat;

    inventario.FieldValues['dCostoTotalMN'] := CantidadRecurso * CostoRecursoMN;
    inventario.FieldValues['dCostoTotalDLL'] := CantidadRecurso * CostoRecursoDLL;
  end;
end;

procedure TfrmActividadesAnexo2.equiposBeforePost(DataSet: TDataSet);
var
  dCantMN, dCantDll, dCant, dRendimiento, factorMN, factorDLL : Double;
begin
  dCantMN := equipos.FieldByName('dCostoMN').AsFloat;
  dCantDll := equipos.FieldByName('dCostoDLL').AsFloat;
  dCant := equipos.FieldByName('dCantidad').AsFloat;
  dRendimiento := equipos.FieldByName('dRendimiento').AsFloat;
  if dRendimiento > 0 then begin
    factorMN := (dCant / dRendimiento) * dCantMN;
    factorDLL := (dCant / dRendimiento * dCantDll);
  end;

  //No se permite ingresar numeros negativos
  PCAbsoluto(Equipos, 'dCantidad');
  PCAbsoluto(Equipos, 'dCostoMN');
  PCAbsoluto(Equipos, 'dCostoDLL');

  if (equipos.FieldValues['sIdEquipo'] = Null) then
    abort
  else
  begin
    if equipos.State = dsInsert then
    begin
      connection.zCommand.Active := False;
      connection.zCommand.Filtered := False;
      connection.zCommand.SQL.Clear;
      connection.zCommand.SQL.Add('Select sIdEquipo from recursosequiposnuevos where sContrato =:Contrato and sWbs =:Wbs and sNumeroActividad =:Actividad and sIdEquipo =:Id ');
      connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
      connection.zCommand.ParamByName('Wbs').AsString := ActividadesxAnexo.FieldValues['sWbs'];
      connection.zCommand.ParamByName('Actividad').AsString := ActividadesxAnexo.FieldValues['sNumeroActividad'];
      connection.zCommand.ParamByName('Id').AsString := equipos.FieldValues['sIdEquipo'];
      connection.zCommand.Open;

      if connection.zCommand.RecordCount > 0 then
      begin
        messageDLG('EL Equipo ya existe, Favor de Verificar.', mtInformation, [mbOk], 0);
        abort;
        exit;
      end;
    end;
    CantidadRecurso := equipos.FieldByName('dCantidad').AsFloat;
    CostoRecursoMN := equipos.FieldByName('dCostoMN').AsFloat;
    CostoRecursoDLL := equipos.FieldByName('dCostoDLL').AsFloat;

    equipos.FieldValues['dCostoTotalMN'] := CantidadRecurso * CostoRecursoMN;
    equipos.FieldValues['dCostoTotalDLL'] := CantidadRecurso * CostoRecursoDLL;

    if dRendimiento = 0 then
    begin
      equipos.FieldByName('dCostoTotalMN').AsFloat := dCant * dCantMN;
      equipos.FieldByName('dCostoTotalDLL').AsFloat := dCant * dCantDll;
    end
    else
    begin
      equipos.FieldByName('dCostoTotalMN').AsFloat := factorMN;
      equipos.FieldByName('dCostoTotalDLL').AsFloat := factorDLL;
    end;
  end;
end;

procedure TfrmActividadesAnexo2.PersonalBeforeDelete(DataSet: TDataSet);
begin
  if Personal.RecordCount > 0 then
    AntesEliminar('recursospersonalnuevos', 'Personal', personal.FieldValues['sNumeroPaquete'], personal.FieldValues['Fila']);
end;

procedure TfrmActividadesAnexo2.PersonalBeforePost(DataSet: TDataSet);
begin
    //Procedimiento para no ingresar numero negativos
  PCAbsoluto(Personal, 'dRendimiento');
  PCAbsoluto(Personal, 'dCantidad');
  PCAbsoluto(Personal, 'dCostoMN');
  PCAbsoluto(Personal, 'dCostoDLL');
  if (Personal.FieldValues['sIdPersonal'] = Null) then
    abort
  else
    AntesGuardar(DataSet, 'recursospersonalnuevos');
end;

procedure TfrmActividadesAnexo2.PersonalCalcFields(DataSet: TDataSet);
begin
  if not Personal.FieldByName('sIdPersonal').IsNull then
    CamposCalculados('sIdPersonal', personal.FieldValues['sIdPersonal'], personal.FieldValues['sNumeroPaquete'], 'personal', 'paquetes_p', personal.FieldValues['Fila']);
end;

procedure TfrmActividadesAnexo2.PersonalDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al eliminar registro de personal', 0);
  abort;
end;

procedure TfrmActividadesAnexo2.PersonalPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al salvar registro de personal', 0);
  abort;
end;

procedure TfrmActividadesAnexo2.equiposCalcFields(DataSet: TDataSet);
begin
  if not Equipos.FieldByName('sIdEquipo').IsNull then
    CamposCalculados('sIdEquipo', equipos.FieldValues['sIdEquipo'], '', 'equipos', '', 0);
end;

procedure TfrmActividadesAnexo2.equiposDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al eliminar registro de equipos', 0);
  abort;
end;

procedure TfrmActividadesAnexo2.equiposPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al salvar registro de equipos', 0);
  abort;
end;

procedure TfrmActividadesAnexo2.inventarioCalcFields(DataSet: TDataSet);
begin
  if not inventario.FieldByName('sIdInsumo').IsNull then
  begin
    connection.qryBusca2.Active := False;
    connection.qryBusca2.SQL.Clear;
    connection.qryBusca2.SQL.Add('select substr(mDescripcion,1,255) as sDescripcion, dVentaMN, dVentaDLL from insumos where sIdInsumo = :inventario');
    connection.qryBusca2.Params.ParamByName('inventario').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('inventario').Value := inventario.FieldValues['sIdInsumo'];
    connection.qryBusca2.Open;
    if connection.qryBusca2.RecordCount > 0 then
      inventariosDescripcion.Text := MidStr(connection.qryBusca2.FieldValues['sDescripcion'], 1, 255);
  end;
end;

procedure TfrmActividadesAnexo2.inventarioDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al eliminar registro de materiales', 0);
  abort;
end;

procedure TfrmActividadesAnexo2.inventarioPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al salvar registro de material', 0);
  abort;
end;

procedure TfrmActividadesAnexo2.basicosCalcFields(DataSet: TDataSet);
begin
  if not Basicos.FieldByName('sIdBasico').IsNull then
    CamposCalculados('sIdBasico', basicos.FieldValues['sIdBasico'], basicos.FieldValues['sNumeroPaquete'], 'basicos', 'paquetes_b', basicos.FieldValues['Fila']);
end;

procedure TfrmActividadesAnexo2.basicosDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al eliminar registro de basicos', 0);
  abort;
end;

procedure TfrmActividadesAnexo2.basicosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al salvar registro de basicos', 0);
  abort;
end;

procedure TfrmActividadesAnexo2.basicosAfterDelete(DataSet: TDataSet);
begin
  Global_RefrescaPU := True;
  if ActividadesxAnexo.RecordCount > 0 then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
      //CalculoPU(ActividadesxAnexo.FieldValues['sWbs'], ActividadesxAnexo.FieldValues['sNumeroActividad'])
    else
      basicos.Cancel
  else
    basicos.Cancel;
end;

procedure TfrmActividadesAnexo2.basicosAfterInsert(DataSet: TDataSet);
begin
  if ActividadesxAnexo.RecordCount > 0 then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
    begin
      basicos.Edit;
      basicos.FieldValues['sContrato'] := global_contrato;
      basicos.FieldValues['sWbs'] := actividadesxanexo.FieldValues['sWbs'];
      basicos.FieldValues['sNumeroActividad'] := actividadesxanexo.FieldValues['sNumeroActividad'];
      basicos.FieldValues['sSimbolo'] := '';
      basicos.FieldValues['fila'] := 0;
      basicos.FieldValues['sNumeroPaquete'] := '';
      basicos.Post;
    end
    else
      basicos.Cancel
  else
    basicos.Cancel;
end;

procedure TfrmActividadesAnexo2.basicosAfterPost(DataSet: TDataSet);
begin
  DespuesInsertado('recursosbasicosnuevos');
end;

procedure TfrmActividadesAnexo2.basicosBeforeDelete(DataSet: TDataSet);
begin
  if basicos.RecordCount > 0 then
    AntesEliminar('recursosbasicosnuevos', 'Basico', basicos.FieldValues['sNumeroPaquete'], basicos.FieldValues['Fila']);
end;

procedure TfrmActividadesAnexo2.basicosBeforePost(DataSet: TDataSet);
begin
    //Procedimiento para no ingresar numero negativos
  PCAbsoluto(Basicos, 'dRendimiento');
  PCAbsoluto(Basicos, 'dCantidad');
  PCAbsoluto(Basicos, 'dCostoMN');
  PCAbsoluto(Basicos, 'dCostoDLL');
  if (basicos.FieldValues['sIdBasico'] = Null) then
    abort
  else
    AntesGuardar(DataSet, 'recursosbasicosnuevos');
end;

procedure TfrmActividadesAnexo2.basicossIdBasicoChange(Sender: TField);
var
  sDescripcion: string;
begin
    {Solo para los basicos podemos formar cuadrillas de basicos o complementar una cuadrilla de basicos con mateirales..}
    {Primero buscamos el basico}
  if not basicos.FieldByName('sIdBasico').IsNull then
  begin
    connection.qryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.qryBusca.SQL.Clear;
    connection.qryBusca.SQL.Add('select sDescripcion, dVentaMN, dVentaDLL, sMedida, "Basico" as Tipo from basicos ' +
      'where sContrato =:contrato And sIdBasico =:basico ' +
      'union ' +
      'select mDescripcion as sDescripcion, dVentaMN, dVentaDLL,sMedida, "Material"  as Tipo from insumos ' +
      'where sContrato =:contrato and sIdInsumo =:basico ');
    connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
    connection.qryBusca.Params.ParamByName('basico').DataType := ftString;
    connection.qryBusca.Params.ParamByName('basico').Value := basicos.FieldValues['sIdBasico'];
    connection.qryBusca.Open;
    if connection.qryBusca.RecordCount > 0 then
    begin
      basicossDescripcion.Text := connection.qryBusca.FieldValues['sDescripcion'];
      basicosdCostoMN.Text := connection.qryBusca.FieldValues['dVentaMN'];
      basicosdCostoDLL.Text := connection.qryBusca.FieldValues['dVentaDLL'];
      sMedidaPU := connection.qryBusca.FieldValues['sMedida'];
      basicosdCantidad.FocusControl;
    end
    else
      if (basicos.State = dsInsert) or (basicos.State = dsEdit) then
        if Trim(basicos.FieldValues['sIdBasico']) <> '' then
        begin
          bandera := 4;
          sDescripcion := '%' + Trim(UpperCase(basicos.FieldValues['sIdBasico'])) + '%';
          BuscaObjeto.Active := False;
          BuscaObjeto.SQL.Clear;
          BuscaObjeto.SQL.Add('Select sIdBasico as Id, "Basico" as Tipo, sDescripcion , dVentaMN, dVentaDLL, "" as Almacen, sMedida ' +
            'from basicos Where sContrato =:Contrato And sDescripcion Like :Descripcion ' +
            'union ' +
            'Select sIdInsumo as Id, "Meterial" as Tipo, mDescripcion as sDescripcion, dVentaMN, dVentaDLL, "" as Almacen, sMedida ' +
            'from insumos Where sContrato =:Contrato And mDescripcion Like :Descripcion ' +
            'order by sDescripcion');
          BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Contrato').Value := global_contrato;
          BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion;
          BuscaObjeto.Open;
          Panel.Visible := True;
          ListaObjeto.Columns[0].Width := 600;
          ListaObjeto.SetFocus
        end
  end;
end;

procedure TfrmActividadesAnexo2.herramientasAfterDelete(DataSet: TDataSet);
begin
  Global_RefrescaPU := True;
  if ActividadesxAnexo.RecordCount > 0 then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
      //CalculoPU(ActividadesxAnexo.FieldValues['sWbs'], ActividadesxAnexo.FieldValues['sNumeroActividad'])
    else
      herramientas.Cancel
  else
    herramientas.Cancel;
end;

procedure TfrmActividadesAnexo2.herramientasAfterInsert(DataSet: TDataSet);
begin
  if ActividadesxAnexo.RecordCount > 0 then
    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Actividad' then
    begin
      herramientas.Edit;
      herramientas.FieldValues['sContrato'] := global_contrato;
      herramientas.FieldValues['sWbs'] := actividadesxanexo.FieldValues['sWbs'];
      herramientas.FieldValues['sNumeroActividad'] := actividadesxanexo.FieldValues['sNumeroActividad'];
      herramientas.FieldValues['sSimbolo'] := '';
      herramientas.FieldValues['fila'] := 0;
      herramientas.FieldValues['sNumeroPaquete'] := '';
      herramientas.FieldValues['eTipoHerramienta'] := 'PERSONAL';
      herramientas.Post;
    end
    else
      herramientas.Cancel
  else
    herramientas.Cancel
end;

procedure TfrmActividadesAnexo2.herramientasAfterPost(DataSet: TDataSet);
begin
  DespuesInsertado('recursosherramientasnuevos');
end;

procedure TfrmActividadesAnexo2.herramientasBeforeDelete(DataSet: TDataSet);
begin
  if herramientas.RecordCount > 0 then
    AntesEliminar('recursosherramientasnuevos', 'Herramienta', herramientas.FieldValues['sNumeroPaquete'], herramientas.FieldValues['Fila']);
end;

procedure TfrmActividadesAnexo2.herramientasBeforePost(DataSet: TDataSet);
begin
     //No se permite ingresar numeros negativos
  PCAbsoluto(herramientas, 'dRendimiento');
  PCAbsoluto(herramientas, 'dCantidad');
  PCAbsoluto(herramientas, 'dCostoMN');
  PCAbsoluto(herramientas, 'dCostoDLL');
  if (herramientas.FieldValues['sIdHerramientas'] = Null) then
    abort
  else
    AntesGuardar(DataSet, 'recursosherramientasnuevos');
end;

procedure TfrmActividadesAnexo2.herramientasCalcFields(DataSet: TDataSet);
begin
  if not herramientas.FieldByName('sIdHerramientas').IsNull then
    CamposCalculados('sIdHerramientas', herramientas.FieldValues['sIdHerramientas'], herramientas.FieldValues['sIdHerramientas'], 'herramientas', 'paquetes_h', herramientas.FieldValues['Fila']);
end;

procedure TfrmActividadesAnexo2.herramientasDeleteError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al eliminar registro de herramientas', 0);
  abort;
end;

procedure TfrmActividadesAnexo2.herramientasPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  UnitExcepciones.manejarExcep(E.Message, E.ClassName, 'Conceptos Generales/Partidas de Anexo', 'Al salvar registro de herramientas', 0);
  abort;
end;

procedure TfrmActividadesAnexo2.herramientassIdHerramientasChange(
  Sender: TField);
var
  sDescripcion: string;
begin
  if not herramientas.FieldByName('sIdHerramientas').IsNull then
  begin
    connection.qryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.qryBusca.SQL.Clear;
    connection.qryBusca.SQL.Add('select sDescripcion, dVentaMN, dVentaDLL, sMedida from herramientas where sContrato = :contrato And sIdHerramientas = :herramientas');
    connection.qryBusca.Params.ParamByName('contrato').DataType := ftString;
    connection.qryBusca.Params.ParamByName('contrato').Value := global_contrato;
    connection.qryBusca.Params.ParamByName('herramientas').DataType := ftString;
    connection.qryBusca.Params.ParamByName('herramientas').Value := herramientas.FieldValues['sIdHerramientas'];
    connection.qryBusca.Open;
    if connection.qryBusca.RecordCount > 0 then
    begin
      herramientassDescripcion.Text := connection.qryBusca.FieldValues['sDescripcion'];
      herramientas.FieldValues['dCostoMN'] := connection.qryBusca.FieldValues['dVentaMN'];
      herramientas.FieldValues['dCostoDLL'] := connection.qryBusca.FieldValues['dVentaDLL'];
      sMedidaPU := connection.qryBusca.FieldValues['sMedida'];
      herramientasdCantidad.FocusControl;
    end
    else
      if (herramientas.State = dsInsert) or (herramientas.State = dsEdit) then
        if Trim(herramientas.FieldValues['sIdHerramientas']) <> '' then
        begin
          bandera := 4;
          sDescripcion := '%' + Trim(UpperCase(herramientas.FieldValues['sIdHerramientas'])) + '%';
          BuscaObjeto.Active := False;
          BuscaObjeto.SQL.Clear;
          BuscaObjeto.SQL.Add('Select sDescripcion, sIdHerramientas as Id, dVentaMN, dVentaDLL, "" as Almacen, sMedida from herramientas ' +
            'Where sContrato = :Contrato And sDescripcion Like :Descripcion Order by sDescripcion');
          BuscaObjeto.Params.ParamByName('Contrato').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Contrato').Value := global_contrato;
          BuscaObjeto.Params.ParamByName('Descripcion').DataType := ftString;
          BuscaObjeto.Params.ParamByName('Descripcion').Value := sDescripcion;
          BuscaObjeto.Open;
          Panel.Visible := True;
          ListaObjeto.SetFocus
        end
  end;
end;

procedure TfrmActividadesAnexo2.ExportaAnexoExcel1Click(Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// PLANTILAS DE IMPORTACION //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Alto: Extended;
      Ren: integer;
      nivel: integer;
    begin
      Ren := 2;
  // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;
      Excel.Columns['A:A'].ColumnWidth := 15;
      Excel.Columns['B:B'].ColumnWidth := 7.29;
      Excel.Columns['C:C'].ColumnWidth := 12.86;
      Excel.Columns['D:D'].ColumnWidth := 10;
      Excel.Columns['E:E'].ColumnWidth := 38;
      Excel.Columns['F:F'].ColumnWidth := 11;
      Excel.Columns['G:Q'].ColumnWidth := 12;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Nivel';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Especif.';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Medida';
      FormatoEncabezado;
      Hoja.Range['G1:G1'].Select;
      Excel.Selection.Value := 'Cantidad';
      FormatoEncabezado;
      Hoja.Range['H1:H1'].Select;
      Excel.Selection.Value := 'Ponderado';
      FormatoEncabezado;
      Hoja.Range['I1:I1'].Select;
      Excel.Selection.Value := 'Precio MN';
      FormatoEncabezado;
      Hoja.Range['J1:J1'].Select;
      Excel.Selection.Value := 'Precio DLL';
      FormatoEncabezado;
      Hoja.Range['K1:K1'].Select;
      Excel.Selection.Value := 'Fase_Proyecto';
      FormatoEncabezado;
      Hoja.Range['L1:L1'].Select;
      Excel.Selection.Value := 'Fecha_Inicio';
      FormatoEncabezado;
      Hoja.Range['M1:M1'].Select;
      Excel.Selection.Value := 'Fecha_Final';
      FormatoEncabezado;
      Hoja.Range['N1:N1'].Select;
      Excel.Selection.Value := 'Duracion';
      FormatoEncabezado;
      Hoja.Range['O1:O1'].Select;
      Excel.Selection.Value := 'Id_Anexo';
      FormatoEncabezado;
      Hoja.Range['P1:P1'].Select;
      Excel.Selection.Value := 'Tipo(PU,ADM)';
      FormatoEncabezado;
      Hoja.Range['Q1:Q1'].Select;
      Excel.Selection.Value := 'Extraordinaria(Si/No)';
      FormatoEncabezado;

      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select * from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio order by iItemOrden');
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        while not connection.QryBusca.Eof do
        begin
          Hoja.Cells[Ren, 1].Select;
          Excel.Selection.Value := global_contrato;
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Size := 12;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Name := 'Calibri';

          Hoja.Cells[Ren, 2].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['iNivel'];

          Hoja.Cells[Ren, 3].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroActividad'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 5].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];
          Alto := Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight;
          Hoja.Cells[Ren, 5].Value := '';

          if Alto > 15 then
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := Alto
          else
            Excel.Rows[IntToStr(Ren) + ':' + IntToStr(Ren)].RowHeight := 15;

          Excel.Selection.Value := connection.QryBusca.FieldValues['mDescripcion'];

          Hoja.Cells[Ren, 6].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sMedida'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 7].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dCantidadAnexo'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 8].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dPonderado'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 9].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dVentaMN'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 10].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dVentaDLL'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 11].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sIdFase'];

          Hoja.Cells[Ren, 12].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaInicio'];

          Hoja.Cells[Ren, 13].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dFechaFinal'];

          Hoja.Cells[Ren, 14].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['dDuracion'];

          Hoja.Cells[Ren, 15].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sAnexo'];

          Hoja.Cells[Ren, 16].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sTipoAnexo'];

          Hoja.Cells[Ren, 17].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['lExtraordinario'];

               {Colores de los paquetes..}
          if connection.QryBusca.FieldValues['sTipoActividad'] = 'Paquete' then
          begin
            nivel := connection.QryBusca.FieldValues['iNivel'];
            Hoja.Range['A' + IntToStr(Ren) + ':Q' + IntToStr(Ren)].Select;
            if colores[nivel + 1, 2] = 1 then
              Excel.Selection.Font.Color := clWhite;
            Excel.Selection.Font.Bold := True;
            Excel.Selection.Interior.ColorIndex := colores[nivel + 1, 1];
          end;

          connection.QryBusca.Next;
          Inc(Ren);
        end;
      end;
      Hoja.Cells[2, 2].Select;
      Hoja.Range['A1:Q1'].Select;

  // Formato general de encabezado de datos..
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Interior.ColorIndex := 24;
      Excel.Selection.Interior.Pattern := xlSolid;
    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      Hoja.Name := 'ANEXO C';
      DatosPlantilla;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al generar Anexo C:' + #10 + #10 + e.Message;
      end;
    end;

    Result := Resultado;
  end;

begin
  // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
  if not SaveDialog1.Execute then
    Exit;

  // Generar el ambiente de excel
  try
    Excel := CreateOleObject('Excel.Application');
  except
    FreeAndNil(Excel);
    showmessage('No es posible generar el ambiente de EXCEL, informe de esto al administrador del sistema.');
    Exit;
  end;

  Excel.Visible := True;
  Excel.DisplayAlerts := False;
  Excel.ScreenUpdating := True;

  Libro := Excel.Workbooks.Add; // Crear el libro sobre el que se ha de trabajar

  // Verificar si cuenta con las hojas necesarias
  while Libro.Sheets.Count < 2 do
    Libro.Sheets.Add;

  // Verificar si se pasa de hojas necesarias
  Libro.Sheets[1].Select;
  while Libro.Sheets.Count > 1 do
    Excel.ActiveWindow.SelectedSheets.Delete;

  // Proceder a generar la hoja REPORTE
  CadError := '';

  if GenerarPlantilla then
    // Grabar el archivo de excel con el nombre dado
    messageDlg('La Plantilla se Genero Correctamente!', mtConfirmation, [mbOk], 0);

  Excel := '';

  if CadError <> '' then
    showmessage(CadError);

end;

procedure TfrmActividadesAnexo2.ExportaFasesaPlantillaExcel1Click(
  Sender: TObject);
var
  CadError, OrdenVigencia: string;
//////////////////////////////////// PLANTILAS DE IMPORTACION //////////////////
  function GenerarPlantilla: Boolean;
  var
    Resultado: Boolean;

    procedure DatosPlantilla;
    var
      CadFecha, tmpNombre, cadena: string;
      fs: tStream;
      Alto: Extended;
      Ren, nivel: integer;
    begin
      Ren := 2;
  // Realizar los ajustes visuales y de formato de hoja
      Excel.ActiveWindow.Zoom := 100;
//  if rAnexoC.Checked then
//  begin
      Excel.Columns['A:C'].ColumnWidth := 12;

      // Colocar los encabezados de la plantilla...
      Hoja.Range['A1:A1'].Select;
      Excel.Selection.Value := 'Contrato';
      FormatoEncabezado;
      Hoja.Range['B1:B1'].Select;
      Excel.Selection.Value := 'Anexo';
      FormatoEncabezado;
      Hoja.Range['C1:C1'].Select;
      Excel.Selection.Value := 'Actividad';
      FormatoEncabezado;
      Hoja.Range['D1:D1'].Select;
      Excel.Selection.Value := 'Id Alcance';
      FormatoEncabezado;
      Hoja.Range['E1:E1'].Select;
      Excel.Selection.Value := 'Descripcion';
      FormatoEncabezado;
      Hoja.Range['F1:F1'].Select;
      Excel.Selection.Value := 'Porcentaje';
      FormatoEncabezado;

      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select l.*, a.sAnexo from alcancesxactividad l ' +
        'inner join actividadesxanexo a on (a.sContrato = l.sContrato and a.sNumeroActividad = l.sNumeroActividad and a.sWbs=l.sWbs and a.sTipoActividad = "Actividad" ) ' +
        'where l.sContrato =:Contrato and a.sIdConvenio =:Convenio order by a.iItemOrden ');
      connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
      connection.QryBusca.Params.ParamByName('Convenio').DataType := ftString;
      connection.QryBusca.Params.ParamByName('Convenio').Value := global_convenio;
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        while not connection.QryBusca.Eof do
        begin
          Hoja.Cells[Ren, 1].Select;
          Excel.Selection.Value := global_contrato;
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;
          Excel.Selection.Font.Size := 11;
          Excel.Selection.Font.Bold := False;
          Excel.Selection.Font.Name := 'Calibri';

          Hoja.Cells[Ren, 2].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sAnexo'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 3].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sNumeroActividad'];
          Excel.Selection.HorizontalAlignment := xlCenter;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 4].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['iFase'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 5].Select;
          Excel.Selection.Value := connection.QryBusca.FieldValues['sDescripcion'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          Hoja.Cells[Ren, 6].Select;
          Excel.Selection.NumberFormat := '@';
          Excel.Selection.Value := connection.QryBusca.FieldValues['dAvance'];
          Excel.Selection.HorizontalAlignment := xlRight;
          Excel.Selection.VerticalAlignment := xlCenter;

          connection.QryBusca.Next;
          Inc(Ren);
        end;
      end;
      Hoja.Cells[2, 2].Select;


      Hoja.Range['A1:F1'].Select;
  // Formato general de encabezado de datos..
      Excel.Selection.HorizontalAlignment := xlCenter;
      Excel.Selection.VerticalAlignment := xlCenter;
      Excel.Selection.Interior.ColorIndex := 5;
      Excel.Selection.Font.color := clWhite;
      Excel.Selection.Interior.Pattern := xlSolid;

      Hoja.Range['A1:A1'].Select;
    end;

  begin
    Resultado := True;
    try
      Hoja := Libro.Sheets[1];
      Hoja.Select;
      try
        Hoja.Name := 'ALCANCES ' + global_contrato;
      except
        Hoja.Name := 'ALCANCES ' + global_contrato;
      end;
      DatosPlantilla;
    except
      on e: exception do
      begin
        Resultado := False;
        CadError := 'Se ha producido el siguiente error al generar la Plantilla de Alcances' + #10 + #10 + e.Message;
      end;
    end;

    Result := Resultado;
  end;

begin
  // Solicitarle al usuario la ruta del archivo en donde desea grabar el reporte
  if not SaveDialog1.Execute then
    Exit;

  // Generar el ambiente de excel
  try
    Excel := CreateOleObject('Excel.Application');
  except
    FreeAndNil(Excel);
    showmessage('No es posible generar el ambiente de EXCEL, informe de esto al administrador del sistema.');
    Exit;
  end;

  Excel.Visible := True;
  Excel.DisplayAlerts := False;
  Excel.ScreenUpdating := True;

  Libro := Excel.Workbooks.Add; // Crear el libro sobre el que se ha de trabajar

  // Verificar si cuenta con las hojas necesarias
  while Libro.Sheets.Count < 2 do
    Libro.Sheets.Add;

  // Verificar si se pasa de hojas necesarias
  Libro.Sheets[1].Select;
  while Libro.Sheets.Count > 1 do
    Excel.ActiveWindow.SelectedSheets.Delete;

  // Proceder a generar la hoja REPORTE
  CadError := '';

  if GenerarPlantilla then
    // Grabar el archivo de excel con el nombre dado
    messageDlg('La Plantilla se Genero Correctamente!', mtConfirmation, [mbOk], 0);

  Excel := '';

  if CadError <> '' then
    showmessage(CadError);
end;

//Procedimientos Calculo de Precios Unitarios en Automatico.. ivan 9 dic 2011
{*****************************************************************************$$$$}

procedure TfrmActividadesAnexo2.formatoEncabezado;
begin
  Excel.Selection.MergeCells := False;
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.VerticalAlignment := xlCenter;
  Excel.Selection.Font.Size := 12;
  Excel.Selection.Font.Bold := False;
  Excel.Selection.Font.Name := 'Calibri';
end;


{Funcion para activar o no las ocpiones de menu..}

procedure TfrmActividadesAnexo2.ActivaPopMenu(pOpcion: Boolean);
begin
  ImprimirCosto.Enabled := pOpcion;
  ImprimirAlcancesxPartida1.Enabled := pOpcion;

  ExportaAnexoExcel1.Enabled := pOpcion;
  AdministraciondelContrato1.Enabled := pOpcion;
  mnFichaTecnica.Enabled := pOpcion;
  ComentariosAdicionalesalaPartida1.Enabled := pOpcion;
  PonderarConceptos.Enabled := pOpcion;
  ConvMayus.Enabled := pOpcion;
  ConvMinus.Enabled := pOpcion;
end;

{Insertar Cuadrilla de Personal, Basicos, Herrmientas ivan 12 dic 2011}

procedure TfrmActividadesAnexo2.InsertaCadrilla(sParamPaquete, sParamRecurso: string; iParamId: integer);
var
  maximo: Integer;
  CostoTotalMN, CostoTotalDLL, dVentaMN_paq, dVentaDLL_paq, dVentaMN, dVentaDLL, dRendimiento: double;
  TablaRecurso: array[1..3, 1..4] of string;
begin
    //Inicializamos la Matriz..
    {Personal}
  TablaRecurso[1][1] := 'recursospersonalnuevos';
  TablaRecurso[1][2] := 'paquetesdepersonal';
  TablaRecurso[1][3] := 'personal';
  TablaRecurso[1][4] := 'sIdpersonal';
    {Herramientas}
  TablaRecurso[2][1] := 'recursosherramientasnuevos';
  TablaRecurso[2][2] := 'paquetesdeherramienta';
  TablaRecurso[2][3] := 'herramientas';
  TablaRecurso[2][4] := 'sIdHerramientas';
    {Basicos}
  TablaRecurso[3][1] := 'recursosbasicosnuevos';
  TablaRecurso[3][2] := 'paquetesdebasico';
  TablaRecurso[3][3] := 'basicos';
  TablaRecurso[3][4] := 'sIdBasico';

  if MessageDlg('Desea Cargar la Cuadrilla Seleccionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('Select sNumeroPaquete from ' + {recursos..} TablaRecurso[iParamId][1] + ' ' +
      'where sContrato  =:Contrato and sWbs =:Wbs and sNumeroActividad =:Actividad and sNumeroPaquete =:Paquete ');
    connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
    connection.QryBusca.ParamByName('Wbs').AsString := actividadesxanexo.FieldValues['sWbs'];
    connection.QryBusca.ParamByName('Actividad').AsString := actividadesxanexo.FieldValues['sNumeroActividad'];
    connection.QryBusca.ParamByName('Paquete').AsString := sParamPaquete;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
      messageDLG('Ya existe la Cuadrilla ' + sParamPaquete + ' Favor de Verificar.', mtInformation, [mbOk], 0);
      exit;
    end;

    maximo := 1;

    connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.QryBusca.SQL.Clear;
    Connection.QryBusca.Filtered := False;
    connection.QryBusca.SQL.Add('Select p.dVentaMN, p.dVentaDLL, p.sMedida, pq.' + {IdRecurso} TablaRecurso[iParamId][4] + ', pq.dCantidad, pq.sNumeroPaquete, p.eTipoBasico ' +
      'from ' + {paquetesde..} TablaRecurso[iParamId][2] + ' pq ' +
      'INNER JOIN ' + {Catalogo} TablaRecurso[iParamId][3] + ' p ON (pq.sContrato = p.sContrato ' +
      'And pq.' + {IdRecurso} TablaRecurso[iParamId][4] + ' = p.' + {IdRecurso} TablaRecurso[iParamId][4] + ') ' +
      'Where pq.sContrato = :Contrato ' +
      'And pq.sNumeroPaquete = :Paquete ' +
      'Order By p.sDescripcion ');
    connection.QryBusca.Params.ParamByName('Contrato').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Contrato').Value := global_contrato;
    connection.QryBusca.Params.ParamByName('Paquete').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Paquete').Value := sParamPaquete;
    connection.QryBusca.Open;

    while not connection.QryBusca.Eof do
    begin
      dRendimiento := connection.QryBusca.FieldValues['dCantidad'];
      CostoRecursoMN := connection.QryBusca.FieldValues['dVentaMN'];
      CostoRecursoDLL := connection.QryBusca.FieldValues['dVentaDLL'];

      if pos('%', connection.QryBusca.FieldValues['sMedida']) = 0 then
      begin
        if dRendimiento > 0 then
        begin
                    //Calculo del rendimiento..
          if c_sSimboloRend = '*' then
          begin
            CostoRecursoMN := (CantidadRecurso * dRendimiento) * connection.QryBusca.FieldValues['dVentaMN'];
            CostoRecursoDLL := (CantidadRecurso * dRendimiento) * connection.QryBusca.FieldValues['dVentaDLL'];
          end;

          if c_sSimboloRend = '/' then
          begin
            CostoRecursoMN := (CantidadRecurso / dRendimiento) * connection.QryBusca.FieldValues['dVentaMN'];
            CostoRecursoDLL := (CantidadRecurso / dRendimiento) * connection.QryBusca.FieldValues['dVentaDLL'];
          end;
          if connection.QryBusca.FieldValues['eTipoBasico'] = 'PERSONAL' then
          begin
              dVentaMN_paq := dVentaMN_paq + CostoRecursoMN;
              dVentaDLL_paq := dVentaDLL_paq + CostoRecursoDLL;
          end;
        end;
      end;
      connection.QryBusca.Next;
    end;

    if connection.QryBusca.RecordCount > 0 then
    begin
      connection.QryBusca.First;
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('INSERT INTO ' + {recursos..} TablaRecurso[iParamId][1] + ' (sContrato, sWbs, sNumeroActividad, ' + TablaRecurso[iParamId][4] + ', dCantidad, dCostoMN, dCostoDLL, sNumeroPaquete, fila, sSimbolo)' +
        'VALUES (:Contrato, :Wbs, :Actividad, :Id, :Cantidad, :CostoMN, :CostoDLL, :Paquete, :Fila, "+")');
      connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca2.ParamByName('Wbs').AsString := actividadesxanexo.FieldValues['sWbs'];
      connection.QryBusca2.ParamByName('Actividad').AsString := actividadesxanexo.FieldValues['sNumeroActividad'];
      connection.QryBusca2.ParamByName('Id').AsString := connection.QryBusca.FieldValues['sNumeroPaquete'];
      connection.QryBusca2.ParamByName('Cantidad').AsFloat := 1;
      connection.QryBusca2.ParamByName('CostoMN').AsFloat := 0;
      connection.QryBusca2.ParamByName('CostoDLL').AsFloat := 0;
      connection.QryBusca2.ParamByName('Paquete').AsString := connection.QryBusca.FieldValues['sNumeroPaquete'];
      connection.QryBusca2.ParamByName('Fila').AsInteger := maximo;
      connection.QryBusca2.ExecSQL;
      inc(maximo);

      CostoTotalMN := 0;
      CostoTotalDLL := 0;
      while not connection.QryBusca.Eof do
      begin
        CantidadRecurso := 1;
        dRendimiento := connection.QryBusca.FieldValues['dCantidad'];
        CostoRecursoMN := connection.QryBusca.FieldValues['dVentaMN'];
        CostoRecursoDLL := connection.QryBusca.FieldValues['dVentaDLL'];

        if pos('%', connection.QryBusca.FieldValues['sMedida']) > 0 then
        begin
          dVentaMN := dVentaMN_paq;
          dVentaDLL := dVentaDLL_paq;
        end
        else
        begin
          dVentaMN := connection.QryBusca.FieldValues['dVentaMN'];
          dVentaDLL := connection.QryBusca.FieldValues['dVentaDLL'];
        end;

        if dRendimiento > 0 then
        begin
                      //Calculo del rendimiento..
          if c_sSimboloRend = '*' then
          begin
            CostoRecursoMN := (CantidadRecurso * dRendimiento) * dVentaMN;
            CostoRecursoDLL := (CantidadRecurso * dRendimiento) * dVentaDLL;
          end;

          if c_sSimboloRend = '/' then
          begin
            CostoRecursoMN := (CantidadRecurso / dRendimiento) * dVentaMN;
            CostoRecursoDLL := (CantidadRecurso / dRendimiento) * dVentaDLL;
          end;
        end;

        connection.QryBusca2.Active := False;
        connection.QryBusca2.SQL.Clear;
        connection.QryBusca2.SQL.Add('INSERT INTO ' + {recursos..} TablaRecurso[iParamId][1] + ' (sContrato, sWbs, sNumeroActividad, ' + {IdRecurso} TablaRecurso[iParamId][4] + ', dCantidad, dRendimiento, dCostoMN, dCostoDLL, dCostoTotalMN, dCostoTotalDLL, sNumeroPaquete, fila, sSimbolo)' +
          'VALUES (:Contrato, :Wbs, :Actividad, :Id, :Cantidad, :Rendimiento, :CostoMN, :CostoDLL, :CostoTotalMN, :CostoTotalDLL, :Paquete, :Fila, "")');
        connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
        connection.QryBusca2.ParamByName('Wbs').AsString := actividadesxanexo.FieldValues['sWbs'];
        connection.QryBusca2.ParamByName('Actividad').AsString := actividadesxanexo.FieldValues['sNumeroActividad'];
        connection.QryBusca2.ParamByName('Id').AsString := connection.QryBusca.FieldValues[TablaRecurso[iParamId][4]];
        connection.QryBusca2.ParamByName('Cantidad').AsFloat := dRendimiento;
        connection.QryBusca2.ParamByName('Rendimiento').AsFloat := 0;
        connection.QryBusca2.ParamByName('CostoMN').AsFloat := dVentaMN;
        connection.QryBusca2.ParamByName('CostoDLL').AsFloat := dVentaDLL;
        connection.QryBusca2.ParamByName('CostoTotalMN').AsFloat := CostoRecursoMN;
        connection.QryBusca2.ParamByName('CostoTotalDLL').AsFloat := CostoRecursoDLL;
        connection.QryBusca2.ParamByName('Paquete').AsString := connection.QryBusca.FieldValues['sNumeroPaquete'];
        connection.QryBusca2.ParamByName('Fila').AsInteger := maximo;
        connection.QryBusca2.ExecSQL;

        CostoTotalMN := CostoTotalMN + CostoRecursoMN;
        CostoTotalDLL := CostoTotalDLL + CostoRecursoDLL;
        connection.QryBusca.Next;
      end;

               //Ahora actualizamos el rendimiento de la cuadrilla..
      connection.QryBusca.First;
      connection.QryBusca2.Active := False;
      connection.QryBusca2.SQL.Clear;
      connection.QryBusca2.SQL.Add('Update ' + {recursos..} TablaRecurso[iParamId][1] + ' set dCostoTotalMN = :CostoMN, dCostoTotalDLL =:CostoDLL ' +
        'where sContrato =:Contrato and sNumeroActividad =:Actividad and sWbs =:Wbs and sNumeroPaquete =:Paquete and Fila = 1');
      connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca2.ParamByName('Wbs').AsString := actividadesxanexo.FieldValues['sWbs'];
      connection.QryBusca2.ParamByName('Actividad').AsString := actividadesxanexo.FieldValues['sNumeroActividad'];
      connection.QryBusca2.ParamByName('CostoMN').AsFloat := CostoTotalMN;
      connection.QryBusca2.ParamByName('CostoDLL').AsFloat := CostoTotalDLL;
      connection.QryBusca2.ParamByName('Paquete').AsString := sParamPaquete;
      connection.QryBusca2.ExecSQL;
    end;

    global_refrescaPU := True;
    //CalculoPU(ActividadesxAnexo.FieldValues['sWbs'], ActividadesxAnexo.FieldValues['sNumeroActividad']);
    personal.Refresh;
    MessageDlg('Proceso Terminado Con Exito', mtInformation, [mbOk], 0);
  end;
end;

{Agrupar o desagrupar Paquetes de Personal, Basicos, Herramientas ivan 12 dice 2011}

procedure TfrmActividadesAnexo2.AgruparPaquete(sParamTipo: string; sParamSimbolo: string; sParamPaquete: string; sParamTabla: string);
begin
  if sParamSimbolo = '+' then
  begin
    connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('Update ' + {Recursos..} sParamTabla + ' set sSimbolo = "*" ' +
      'where sContrato  =:Contrato and sWbs =:Wbs and sNumeroActividad =:Actividad and fila > 1 and sNumeroPaquete =:Paquete ');
    connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
    connection.QryBusca.ParamByName('Wbs').AsString := actividadesxanexo.FieldValues['sWbs'];
    connection.QryBusca.ParamByName('Actividad').AsString := actividadesxanexo.FieldValues['sNumeroActividad'];
    connection.QryBusca.ParamByName('Paquete').AsString := sParamPaquete;
    connection.QryBusca.ExecSQL;

    connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('Update ' + {Recursos..} sParamTabla + ' set sSimbolo = "-" ' +
      'where sContrato  =:Contrato and sWbs =:Wbs and sNumeroActividad =:Actividad and fila = 1 and sNumeroPaquete =:Paquete ');
    connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
    connection.QryBusca.ParamByName('Wbs').AsString := actividadesxanexo.FieldValues['sWbs'];
    connection.QryBusca.ParamByName('Actividad').AsString := actividadesxanexo.FieldValues['sNumeroActividad'];
    connection.QryBusca.ParamByName('Paquete').AsString := sParamPaquete;
    connection.QryBusca.ExecSQL;
  end;

  if sParamSimbolo = '-' then
  begin
    connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('Update ' + {Recursos..} sParamTabla + ' set sSimbolo = "" ' +
      'where sContrato  =:Contrato and sWbs =:Wbs and sNumeroActividad =:Actividad and fila > 1 and sNumeroPaquete =:Paquete ');
    connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
    connection.QryBusca.ParamByName('Wbs').AsString := actividadesxanexo.FieldValues['sWbs'];
    connection.QryBusca.ParamByName('Actividad').AsString := actividadesxanexo.FieldValues['sNumeroActividad'];
    connection.QryBusca.ParamByName('Paquete').AsString := sParamPaquete;
    connection.QryBusca.ExecSQL;

    connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('Update ' + {Recursos..} sParamTabla + ' set sSimbolo = "+" ' +
      'where sContrato  =:Contrato and sWbs =:Wbs and sNumeroActividad =:Actividad and fila = 1 and sNumeroPaquete =:Paquete ');
    connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
    connection.QryBusca.ParamByName('Wbs').AsString := actividadesxanexo.FieldValues['sWbs'];
    connection.QryBusca.ParamByName('Actividad').AsString := actividadesxanexo.FieldValues['sNumeroActividad'];
    connection.QryBusca.ParamByName('Paquete').AsString := sParamPaquete;
    connection.QryBusca.ExecSQL;
  end;

  if sParamTipo = 'Personal' then
    personal.Refresh;

  if sParamTipo = 'Herramienta' then
    herramientas.Refresh;

  if sParamTipo = 'Basico' then
    basicos.Refresh;
end;

{Campos calculados de Personal, Basicos Herrmientas. ivan 12 dic 2011}

procedure TfrmActividadesAnexo2.CamposCalculados(sParamId: string; sParamIdRecurso: string; sParamPaquete: string; sParamTabla: string; sParamTablaPaq: string; iParamFila: Integer);
begin
  connection.qryBusca2.Active := False;
  connection.qryBusca2.SQL.Clear;
  connection.qryBusca2.SQL.Add('select sDescripcion, dVentaMN, dVentaDLL from ' + sParamTabla + ' where sContrato = :contrato And ' + sParamId + ' =:Id');
  connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString;
  connection.qryBusca2.Params.ParamByName('contrato').Value := global_contrato;
  connection.qryBusca2.Params.ParamByName('Id').DataType := ftString;
  connection.qryBusca2.Params.ParamByName('Id').Value := sParamIdRecurso;
  connection.qryBusca2.Open;

  if iParamFila = 1 then
  begin
    connection.qryBusca2.Active := False;
    connection.qryBusca2.SQL.Clear;
    connection.qryBusca2.SQL.Add('select sDescripcion from ' + sParamTablaPaq + ' where sContrato =:Contrato and sNumeroPaquete =:Cuadrilla ');
    connection.qryBusca2.Params.ParamByName('contrato').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('contrato').Value := global_contrato;
    connection.qryBusca2.Params.ParamByName('Cuadrilla').DataType := ftString;
    connection.qryBusca2.Params.ParamByName('Cuadrilla').Value := sParamPaquete;
    connection.qryBusca2.Open;
  end;

  if connection.qryBusca2.RecordCount > 0 then
  begin
    if sParamTabla = 'personal' then
      PersonalsDescripcion.Text := connection.qryBusca2.FieldValues['sDescripcion'];

    if sParamTabla = 'equipos' then
      equipossDescripcion.Text := connection.qryBusca2.FieldValues['sDescripcion'];

    if sParamTabla = 'basicos' then
      BasicossDescripcion.Text := connection.qryBusca2.FieldValues['sDescripcion'];

    if sParamTabla = 'herramientas' then
      HerramientassDescripcion.Text := connection.qryBusca2.FieldValues['sDescripcion'];
  end;
end;

{Evento depues de insertar registro de Personal, Basicos, Herramientas. ivan 12 dic 2011}

procedure TfrmActividadesAnexo2.DespuesInsertado(sParamTabla: string);
var
  dCostoMN, dCostoDLL, dCostoTotalMN, dCostoTotalDLL, dRendimiento, dCantidad: double;
begin
     //Verificamos si se modifico algun recurso de la cuadrilla..
  if sPaquete_cuad <> '' then
  begin
         //Obtenermos el rendimiento de la cuadrilla..
    connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select dCantidad, dRendimiento ' +
      'from ' + sParamTabla + ' where sContrato =:Contrato and sNumeroActividad  =:Actividad ' +
      'and sWbs =:Wbs and sNumeroPaquete =:Paquete and Fila = 1 group by sContrato');
    connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
    connection.QryBusca.ParamByName('Actividad').AsString := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    connection.QryBusca.ParamByName('Wbs').AsString := ActividadesxAnexo.FieldValues['sWbs'];
    connection.QryBusca.ParamByName('Paquete').AsString := sPaquete_cuad;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
      dRendimiento := connection.QryBusca.FieldValues['dRendimiento'];
      dCantidad := connection.QryBusca.FieldValues['dCantidad'];
    end;

    connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('select dCantidad, dRendimiento, sum(dCostoTotalMN) as TotalMN, sum(dCostoTotalDLL) as TotalDLL ' +
      'from ' + sParamTabla + ' where sContrato =:Contrato and sNumeroActividad  =:Actividad ' +
      'and sWbs =:Wbs and sNumeroPaquete =:Paquete and Fila = 2 group by sContrato');
    connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
    connection.QryBusca.ParamByName('Actividad').AsString := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    connection.QryBusca.ParamByName('Wbs').AsString := ActividadesxAnexo.FieldValues['sWbs'];
    connection.QryBusca.ParamByName('Paquete').AsString := sPaquete_cuad;
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
    begin
      dCostoMN := connection.QryBusca.FieldValues['TotalMN'];
      dCostoDLL := connection.QryBusca.FieldValues['TotalDLL'];

             //Calculo del rendimiento..
      if c_sSimboloRend = '*' then
      begin
        dCostoTotalMN := (dCantidad * dRendimiento) * dCostoMN;
        dCostoTotalDLL := (dCantidad * dRendimiento) * dCostoDLL;
      end;

      if c_sSimboloRend = '/' then
      begin
        dCostoTotalMN := (dCantidad / dRendimiento) * dCostoMN;
        dCostoTotalDLL := (dCantidad / dRendimiento) * dCostoDLL;
      end;
    end;

         //Ahora Actualizamos la cuadrilla..
    connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('Update ' + sParamTabla + ' set dCostoMN =:CostoMN, dCostoDLL =:CostoDLL, dCostoTotalMN =:CostoMN_T, dCostoTotalDLL =:CostoDLL_T ' +
      'where sContrato =:Contrato and sNumeroActividad  =:Actividad ' +
      'and sWbs =:Wbs and sNumeroPaquete =:Paquete and Fila = 1');
    connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
    connection.QryBusca.ParamByName('Actividad').AsString := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    connection.QryBusca.ParamByName('Wbs').AsString := ActividadesxAnexo.FieldValues['sWbs'];
    connection.QryBusca.ParamByName('CostoMN').AsFloat := dCostoMN;
    connection.QryBusca.ParamByName('CostoDLL').AsFloat := dCostoDLL;
    connection.QryBusca.ParamByName('CostoMN_T').AsFloat := dCostoTotalMN;
    connection.QryBusca.ParamByName('CostoDLL_T').AsFloat := dCostoTotalDLL;
    connection.QryBusca.ParamByName('Paquete').AsString := sPaquete_cuad;
    connection.QryBusca.ExecSQL;
    sPaquete_cuad := '';
  end;

  Global_RefrescaPU := True;
  if Actividadesxanexo.FieldValues['sTipoActividad'] = 'Actividad' then
    //CalculoPU(ActividadesxAnexo.FieldValues['sWbs'], ActividadesxAnexo.FieldValues['sNumeroActividad']);
end;

{Evento Antes Eliminar Personal, Basicos Herramientas ivan 12 dic 2011}

procedure TfrmActividadesAnexo2.AntesEliminar(sParamTabla: string; sParamTipo: string; sParamPaquete: string; iParamFila: Integer);
begin
    // VERIFICAR SI ES UNA CUADRILLA...
  if iParamFila = 1 then
  begin
    connection.QryBusca.Active := False;
    Connection.QryBusca.Filtered := False;
    connection.QryBusca.SQL.Clear;
    connection.QryBusca.SQL.Add('delete from ' + sParamTabla + ' ' +
      'where sContrato =:Contrato and sWbs =:Wbs and sNumeroActividad =:Actividad ' +
      'and sNumeroPaquete =:Paquete and fila =:numero ');
    connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
    connection.QryBusca.ParamByName('Actividad').AsString := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    connection.QryBusca.ParamByName('Wbs').AsString := ActividadesxAnexo.FieldValues['sWbs'];
    connection.QryBusca.ParamByName('Paquete').AsString := sParamPaquete;
    connection.QryBusca.ParamByName('numero').AsInteger := iParamFila + 1;
    connection.QryBusca.ExecSQL;
  end;

  if iParamFila = 2 then
  begin
    messageDLG('No se puede Eliminar ' + sParamTipo + ' de la Cuadrilla!', mtInformation, [mbOk], 0);
    abort;
  end;
end;

{Evento Antes Guerdar Datos para Personal, Basicos, Herramientas ivan 12 dic 2011}

procedure TfrmActividadesAnexo2.AntesGuardar(SetDatos: TDataSet; sParamTabla: string);
var
  dRendimiento: double;
  sMedida: string;
begin
  sPaquete_cuad := '';
  dRendimiento := SetDatos.FieldByName('dRendimiento').AsFloat;
  CantidadRecurso := SetDatos.FieldByName('dCantidad').AsFloat;
  CostoRecursoMN := SetDatos.FieldByName('dCostoMN').AsFloat;
  CostoRecursoDLL := SetDatos.FieldByName('dCostoDLL').AsFloat;
  sMedida := sMedidaPU;

    //Verificamos si estamos insertando un Factor ,,
  if pos('%', sMedida) > 0 then
  begin
    {connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select sum(dCostoTotalMN) as TotalMN, sum(dCostoTotalDLL)as TotalDLL from recursospersonalnuevos ' +
      'where sContrato =:Contrato and sWbs =:Wbs and sNumeroActividad =:Actividad and fila = 1 group by sContrato ');
    connection.zCommand.ParamByName('Contrato').AsString := global_contrato;
    connection.zCommand.ParamByName('Wbs').AsString := ActividadesxAnexo.FieldValues['sWbs'];
    connection.zCommand.ParamByName('Actividad').AsString := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    connection.zCommand.Open;}

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('select sum(r.dCostoTotalMN) as TotalMN, sum(r.dCostoTotalDLL)as TotalDLL from recursosbasicosnuevos r ' +
              'inner join basicos p on (p.sContrato = r.sContrato and p.sIdBasico = r.sIdBasico and p.eTipoBasico = "PERSONAL") ' +
              'where r.sContrato =:Contrato and r.sWbs =:Wbs and r.sNumeroActividad =:Actividad group by r.sContrato ');
    connection.zCommand.ParamByName('Contrato').AsString  := global_contrato;
    connection.zCommand.ParamByName('Wbs').AsString       := ActividadesxAnexo.FieldValues['sWbs'];
    connection.zCommand.ParamByName('Actividad').AsString := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    connection.zCommand.Open;

    if connection.zCommand.RecordCount > 0 then
    begin
        CostoRecursoMN := connection.zCommand.FieldValues['TotalMN'];
        CostoRecursoDLL := connection.zCommand.FieldValues['TotalDLL'];
    end;
    SetDatos.FieldValues['dCostoMN'] := CostoRecursoMN;
    SetDatos.FieldValues['dCostoDLL'] := CostoRecursoDLL;
  end;

  if dRendimiento = 0 then
  begin
    SetDatos.FieldValues['dCostoTotalMN'] := CantidadRecurso * CostoRecursoMN;
    SetDatos.FieldValues['dCostoTotalDLL'] := CantidadRecurso * CostoRecursoDLL;
  end
  else
  begin
    if CantidadRecurso = 0 then
      SetDatos.FieldValues['dCantidad'] := 1;
         //Si es una cuadrilla..
    if SetDatos.FieldValues['Fila'] = 1 then
    begin
      connection.QryBusca.Active := False;
      Connection.QryBusca.Filtered := False;
      connection.QryBusca.SQL.Clear;
      connection.QryBusca.SQL.Add('select sum(dCostoTotalMN) as TotalMN, sum(dCostoTotalDLL) as TotalDLL ' +
        'from ' + sParamTabla + ' where sContrato =:Contrato and sNumeroActividad  =:Actividad ' +
        'and sWbs =:Wbs and sNumeroPaquete =:Paquete and Fila = 2 group by sContrato');
      connection.QryBusca.ParamByName('Contrato').AsString := global_contrato;
      connection.QryBusca.ParamByName('Actividad').AsString := ActividadesxAnexo.FieldValues['sNumeroActividad'];
      connection.QryBusca.ParamByName('Wbs').AsString := ActividadesxAnexo.FieldValues['sWbs'];
      connection.QryBusca.ParamByName('Paquete').AsString := SetDatos.FieldValues['sNumeroPaquete'];
      connection.QryBusca.Open;

      if connection.QryBusca.RecordCount > 0 then
      begin
        SetDatos.FieldValues['dCostoMN'] := connection.QryBusca.FieldValues['TotalMN'];
        SetDatos.FieldValues['dCostoDLL'] := connection.QryBusca.FieldValues['TotalDLL'];

                 //Calculo del rendimiento..
        if c_sSimboloRend = '*' then
        begin
          SetDatos.FieldValues['dCostoTotalMN'] := (SetDatos.FieldValues['dCantidad'] * SetDatos.FieldValues['dRendimiento']) * connection.QryBusca.FieldValues['TotalMN'];
          SetDatos.FieldValues['dCostoTotalDLL'] := (SetDatos.FieldValues['dCantidad'] * SetDatos.FieldValues['dRendimiento']) * connection.QryBusca.FieldValues['TotalDLL'];
        end;

        if c_sSimboloRend = '/' then
        begin
          SetDatos.FieldValues['dCostoTotalMN'] := (SetDatos.FieldValues['dCantidad'] / SetDatos.FieldValues['dRendimiento']) * connection.QryBusca.FieldValues['TotalMN'];
          SetDatos.FieldValues['dCostoTotalDLL'] := (SetDatos.FieldValues['dCantidad'] / SetDatos.FieldValues['dRendimiento']) * connection.QryBusca.FieldValues['TotalDLL'];
        end;
      end;
    end
    else
    begin
             //Calculo del rendimiento..
      if c_sSimboloRend = '*' then
      begin
        SetDatos.FieldValues['dCostoTotalMN'] := (CantidadRecurso * dRendimiento) * CostoRecursoMN;
        SetDatos.FieldValues['dCostoTotalDLL'] := (CantidadRecurso * dRendimiento) * CostoRecursoDLL;
      end;

      if c_sSimboloRend = '/' then
      begin
        SetDatos.FieldValues['dCostoTotalMN'] := (CantidadRecurso / dRendimiento) * CostoRecursoMN;
        SetDatos.FieldValues['dCostoTotalDLL'] := (CantidadRecurso / dRendimiento) * CostoRecursoDLL;
      end;

      if SetDatos.FieldValues['Fila'] > 1 then
        sPaquete_cuad := SetDatos.FieldValues['sNumeroPaquete'];
    end;
  end;
end;

procedure TfrmActividadesAnexo2.ActualizaSentencias;
begin


  zFasesProyecto.Active := False;
  zFasesProyecto.Open;

  Anexos.Active := False;
  Anexos.Open;

  PartidasxAlcance.Active := False;
  PartidasxAlcance.Params.ParamByName('Contrato').DataType := ftString;
  PartidasxAlcance.Params.ParamByName('Contrato').Value := Global_Contrato;
  PartidasxAlcance.Params.ParamByName('Convenio').DataType := ftString;
  PartidasxAlcance.Params.ParamByName('Convenio').Value := Global_Convenio;
  PartidasxAlcance.Open;

  Paquetes.Active := False;
  Paquetes.Params.ParamByName('contrato').DataType := ftString;
  Paquetes.Params.ParamByName('contrato').Value := global_contrato;
  Paquetes.Params.ParamByName('convenio').DataType := ftString;
  Paquetes.Params.ParamByName('convenio').Value := global_convenio;
  Paquetes.Open;

  connection.QryBusca2.Active;
  connection.QryBusca2.SQL.Clear;
  connection.QryBusca2.SQL.Add('select dCostoDirecto, dCostoIndirectos, dFinanciamiento, dUtilidad, dCargosAdicionales, dCargosAdicionales2, dCargosAdicionales3, sSimbolo, sReportesCIA from configuracion where sContrato = :Contrato');
  connection.QryBusca2.ParamByName('Contrato').AsString := global_contrato;
  connection.QryBusca2.Open;

  c_dCostoDirecto := connection.QryBusca2.FieldValues['dCostoDirecto'];
  c_dCostoIndirectos := connection.QryBusca2.FieldValues['dCostoIndirectos'];
  c_dFinanciamiento := connection.QryBusca2.FieldValues['dFinanciamiento'];
  c_dUtilidad := connection.QryBusca2.FieldValues['dUtilidad'];
  c_dCargosAdicionales := connection.QryBusca2.FieldValues['dCargosAdicionales'];
  c_dCargosAdicionales2 := connection.QryBusca2.FieldValues['dCargosAdicionales2'];
  c_dCargosAdicionales3 := connection.QryBusca2.FieldValues['dCargosAdicionales3'];
  c_sSimboloRend := connection.QryBusca2.FieldValues['sSimbolo'];
  global_miReporte := connection.QryBusca2.FieldValues['sReportesCIA'];
end;

procedure TfrmActividadesAnexo2.AntesInsertarSubactividad;
begin
    PanelSubactividad.Visible := True;
    iFaseMaximo := 1;

    //Buscamos el maximo item para insertarlo.
    connection.QryBusca.Active := False;
    connection.QryBusca.Sql.Clear;
    connection.QryBusca.Sql.Add('select max(iFase) as iFase from alcancesxactividad ' +
      'Where sContrato = :Contrato and sIdConvenio =:Convenio And sWbs=:wbs and sNumeroActividad = :Actividad group by sContrato');
    connection.QryBusca.Params.ParamByName('Contrato').DataType  := ftString;
    connection.QryBusca.Params.ParamByName('Contrato').Value     := global_contrato;
    connection.QryBusca.Params.ParamByName('Convenio').DataType  := ftString;
    connection.QryBusca.Params.ParamByName('Convenio').Value     := global_convenio;
    connection.QryBusca.Params.ParamByName('Actividad').DataType := ftString;
    connection.QryBusca.Params.ParamByName('Actividad').Value    := ActividadesxAnexo.FieldValues['sNumeroActividad'];
    connection.QryBusca.Params.ParamByName('wbs').DataType       := ftString;
    connection.QryBusca.Params.ParamByName('wbs').Value          := ActividadesxAnexo.FieldValues['sWbs'];
    connection.QryBusca.Open;

    if connection.QryBusca.RecordCount > 0 then
       iFaseMaximo := connection.QryBusca.FieldValues['iFase'] + 1;

    tsSubActividad.Text   := ActividadesxAnexo.FieldValues['sNumeroActividad'] +'.' +IntTostr(iFaseMaximo);
    tdCantidadSub.Value   := 0;
    tdPonderadoSub.Value  := 0;
    tdVentaMnSub.Value    := 0;
    tdVentaDLLSub.Value   := 0;
    tdDuracionSub.Value   := 0;
    tmDescripcionSub.Text := '';
    tdFechaInicioSub.Date := actividadesxanexo.FieldValues['dFechaInicio'];
    tdFechaFinalSub.Date  := actividadesxanexo.FieldValues['dFechaFinal'];
    tsTipo.ItemIndex      := 0;

    tsSubactividad.SetFocus;

end;

//Martin Samuel Esteban Diaz - 30/Enero/2014
//Costos Personal, Equipo, Materiales, Basicos, Herramientas
procedure TfrmActividadesAnexo2.costosPersonal;
var
  Libro, Excel, Hoja: Variant;
  NombreDelExcel : String;

  zqAnexo, zqPersonal, zqBasicos : TZQuery;

  iFila : integer;

  TempPath: String;
  Fs: TStream;
  Pic : TJpegImage;
  imgAux: TImage;
  TmpName: String;

  sInicioPartida : string;
  sFinPartida : string;
  sInicioCuad, sFinCuad : string;

  sInicioBasico : string;

  diferencia : Boolean;
{$REGION 'PROCEDIMIENTOS'}  
  procedure EstablecerContornos;
  begin
    Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
    Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
    Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
    Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;
  end;

  procedure DarFormato(combinar : Boolean ; alinear : string ; Negritas : Boolean ; contornos : Boolean ; fuente : integer);
  begin
    if combinar then
    begin
      Excel.Selection.MergeCells := True;
    end;
    
    if alinear = 'centro' then
    begin
      Excel.Selection.HorizontalAlignment := xlCenter;
    end

    else if alinear = 'der' then
    begin
      Excel.Selection.HorizontalAlignment := xlRight;
    end

    else if alinear = 'izq' then
    begin
      Excel.Selection.HorizontalAlignment  := xlLeft;
    end;

    if Negritas then
    begin
      Excel.Selection.Font.Bold := True;
    end;

    if contornos then
    begin
      EstablecerContornos;
    end;

    Excel.Selection.Font.Size := fuente;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Size := 7;
  end;

  function PGetTempDir: string;
  var
     Buffer : Array[0..Max_path] of char;
  begin
    FillChar(Buffer,Max_Path + 1, 0);
    GetTempPath(Max_path, Buffer);
    Result := String(Buffer);
    if Result[Length(Result)] <> '\' then Result := Result + '\';
  end;

function PNombreAleatorio(Longitud: Integer):String;
const
  Chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ';
var
  S: string;
  i, N: integer;
begin
  Randomize;
  S := '';
  for i := 1 to Longitud do begin
    N := Random(Length(Chars)) + 1;
    S := S + Chars[N];
  end;
  Result := S;
end;
{$ENDREGION}

begin
  //Calculo de costos de materiales - Martin Samuel Esteban Diaz;
  {$REGION 'ACCEDER A EXCEL'}
  NombreDelExcel := PGetTempDir + 'TEMP~' + PNombreAleatorio(3) + 'costosmateriales.xls';
  Try
    Excel := CreateOleObject('Excel.Application');
  Except
    On E: Exception do begin
      FreeAndNil(Excel);
      ShowMessage(E.Message);
      Exit;
    end;
  End;

  Excel.Visible := True;
  Excel.DisplayAlerts:= False;
  Libro := Excel.Workbooks.Add;
  Excel.WorkBooks[1].WorkSheets[1].Name := 'EXPLOSION GENERAL DE PERSONAL';


  try
    TmpName := '';
    imgAux := TImage.Create(nil);
    if TmpName='' then begin
      TempPath := ExtractFilePath(Application.Exename);
      TmpName:=TempPath +'imgtempSln1'+formatdatetime('dddddd hhnnss',now)+'.jpg';
      fs := Connection.contrato.CreateBlobStream(Connection.contrato.FieldByName('bImagen'), bmRead);
      If fs.Size > 1 Then Begin
        try
          Pic:=TJpegImage.Create;
          try
            Pic.LoadFromStream(fs);
            imgAux.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          fs.Free;
        End;
        imgAux.Picture.SaveToFile(TmpName);
      End;
    end;
  Finally
    imgAux.Free;
  End;
  Excel.ActiveSheet.Shapes.AddPicture(TmpName, True, True, 10, 2, 100, 47);
  {$ENDREGION}

  {$REGION 'CONSULTA DATOS'}
  zqAnexo := TZQuery.Create(nil);
  zqAnexo.Connection := connection.zConnection;

  zqPersonal := TZQuery.Create(nil);
  zqPersonal.Connection := connection.zConnection;

  zqBasicos := TZQuery.Create(nil);
  zqBasicos.Connection := connection.zConnection;


  Excel.Columns['A:A'].ColumnWidth := 15;
  Excel.Columns['B:B'].ColumnWidth := 0;
  Excel.Columns['C:C'].ColumnWidth := 20;
  Excel.Columns['D:D'].ColumnWidth := 70;
  Excel.Columns['E:E'].ColumnWidth := 15;
  Excel.Columns['F:F'].ColumnWidth := 20;
  Excel.Columns['G:G'].ColumnWidth := 20;
  Excel.Columns['H:H'].ColumnWidth := 25;

  Excel.Rows[4].RowHeight := 30;

  Excel.Range['B2:D3'].Select;
  DarFormato(True, 'centro', True, False, 20);
  Excel.Selection.Value := 'EXPLOSION GENERAL DE PERSONAL';
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.Font.Size := 12;
  Excel.Selection.Font.Name := 'Calibri';

  Excel.Range['A5:I5'].Select;
  Excel.Selection.Font.Color := 2;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Interior.ColorIndex := 46;

  Excel.Range['A5:A5'].Select;
  Excel.Selection.Value := 'ACTIVIDAD';

  Excel.Range['B5:B5'].Select;
  Excel.Selection.Value := 'CANT X PART.';

  Excel.Range['C5:C5'].Select;
  Excel.Selection.Value := 'ID PERSONAL';

  Excel.Range['D5:D5'].Select;
  Excel.Selection.Value := 'DESCRIPCION';

  Excel.Range['E5:E5'].Select;
  Excel.Selection.Value := 'MEDIDA';

  Excel.Range['F5:F5'].Select;
  Excel.Selection.Value := 'CANTIDAD X PER.';

  Excel.Range['G5:G5'].Select;
  Excel.Selection.Value := 'COSTO MN PER.';

  Excel.Range['H5:H5'].Select;
  Excel.Selection.Value := 'COSTO TOTAL MN';

  Excel.Range['I5:I5'].Select;
  Excel.Selection.Value := 'TOTAL';

  //Consultamos las actividades del anexo C
  zqAnexo.Active := False;
  zqAnexo.SQL.Clear;
  zqAnexo.SQL.Add('select sWbs, sNumeroActividad, dCantidadAnexo from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sTipoActividad = "Actividad" order by iItemOrden ');
  zqAnexo.Params.ParamByName('contrato').DataType := ftString;
  zqAnexo.Params.ParamByName('contrato').Value    := global_contrato;
  zqAnexo.Params.ParamByName('convenio').DataType := ftString;
  zqAnexo.Params.ParamByName('convenio').Value    := global_convenio;
  zqAnexo.Open;

  zqPersonal.Active := False;
  zqPersonal.SQL.Clear;
  zqPersonal.SQL.Add('select r.*, p.sDescripcion, p.sMedida from recursospersonalnuevos r '+
                     'left join personal p on (r.sContrato = p.sContrato and r.sIdPersonal = p.sIdPersonal) '+
                     'where r.sContrato = :contrato '+
                     'and r.sWbs = :wbs '+
                     'and r.sNumeroActividad = :actividad '+
                     'and (r.fila = 1 or r.fila = 0) '+
                     'order by r.fila desc');

  zqBasicos.Active := False;
  zqBasicos.SQL.Clear;
  zqBasicos.SQL.Add('select r.*, b.sDescripcion, b.sMedida from recursosbasicosnuevos r '+
                    'inner join basicos b on (b.sContrato = r.sContrato and b.sIdBasico = r.sIdBasico) '+
                    'where r.sContrato = :contrato '+
                    'and r.sWbs = :wbs '+
                    'and r.sNumeroActividad = :actividad '+
                    'and b.eTipoBasico = "PERSONAL" ');

   connection.QryBusca.Active := False;
   connection.QryBusca.SQL.Clear;
   connection.QryBusca.SQl.Add('select sDescripcion from paquetes_p '+
                               'where sContrato = :contrato '+
                               'and sNumeroPaquete = :id');
   connection.QryBusca.Params.ParamByName('contrato').DataType := ftString;
   connection.QryBusca.Params.ParamByName('contrato').Value    := global_contrato;
   connection.QryBusca.Params.ParamByName('id').DataType       := ftString;

   {$ENDREGION}

  diferencia := True;
  iFila := 6;
  if zqAnexo.RecordCount > 0 then
  begin
    while not zqAnexo.Eof do
    begin
      sInicioPartida := IntToStr(iFila);

      zqPersonal.Active := False;
      zqPersonal.Params.ParamByName('contrato').DataType  := ftString;
      zqPersonal.Params.ParamByName('contrato').Value     := global_contrato;
      zqPersonal.Params.ParamByName('wbs').DataType       := ftString;
      zqPersonal.Params.ParamByName('wbs').Value          := zqAnexo.FieldByName('sWbs').AsString;
      zqPersonal.Params.ParamByName('actividad').DataType := ftString;
      zqPersonal.Params.ParamByName('actividad').Value    := zqAnexo.FieldByName('sNumeroActividad').AsString;
      zqPersonal.Open;

      if zqPersonal.RecordCount > 0 then
      begin
        while not zqPersonal.Eof do
        begin
          connection.QryBusca.Active := False;
          connection.QryBusca.Params.ParamByName('id').Value := zqPersonal.FieldByName('sIdPersonal').AsString;
          connection.QryBusca.Open;

          //Se empiezan a Imprimir los datos de personal
          Excel.Range['A' + IntToStr(iFila) + ':A' + IntToStr(iFila)].Select;
          Excel.Selection.Value := Chr(39) + zqAnexo.FieldByName('sNumeroActividad').AsString;
          EstablecerContornos;

          Excel.Range['B' + IntToStr(iFila) + ':B' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqAnexo.FieldByName('dCantidadAnexo').AsFloat;
          EstablecerContornos;

          Excel.Range['C' + IntToStr(iFila) + ':C' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqPersonal.FieldByName('sIdPersonal').AsString;
          EstablecerContornos;
          
          Excel.Range['D' + IntToStr(iFila) + ':D' + IntToStr(iFila)].Select;
          Excel.Selection.Value := connection.QryBusca.FieldByName('sDescripcion').AsString;
          EstablecerContornos;

          Excel.Range['E' + IntToStr(iFila) + ':E' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqPersonal.FieldByName('sMedida').AsString;
          EstablecerContornos;

          Excel.Range['F' + IntToStr(iFila) + ':F' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqPersonal.FieldByName('dCantidad').AsFloat;
          EstablecerContornos;

          Excel.Range['G' + IntToStr(iFila) + ':G' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqPersonal.FieldByName('dCostoMN').AsFloat;
          Excel.Selection.NumberFormat := '#,##0.00';
          EstablecerContornos;

          Excel.Range['H' + IntToStr(iFila) + ':H' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqPersonal.FieldByName('dCostoTotalMN').AsFloat;
          Excel.Selection.NumberFormat := '#,##0.00';
          EstablecerContornos;

          inc(iFila);
          zqPersonal.Next;
        end;
      end;

      if zqPersonal.RecordCount > 0 then
      begin
        sFinPartida := IntToStr(iFila - 1);
        Excel.Range['A' + sInicioPartida + ':H' + sFinPartida].Select;
        if diferencia then begin
          Excel.Selection.Interior.ColorIndex := 2;
          diferencia := False;
        end
        else begin
          diferencia := True;
          Excel.Selection.Interior.ColorIndex := 34;
        end;
      end;

      zqBasicos.Active := False;
      zqBasicos.Params.ParamByName('contrato').DataType  := ftString;
      zqBasicos.Params.ParamByName('contrato').Value     := global_contrato;
      zqBasicos.Params.ParamByName('wbs').DataType       := ftString;
      zqBasicos.Params.ParamByName('wbs').Value          := zqAnexo.FieldByName('sWbs').AsString;
      zqBasicos.Params.ParamByName('actividad').DataType := ftString;
      zqBasicos.Params.ParamByName('actividad').Value    := zqAnexo.FieldByName('sNumeroActividad').AsString;
      zqBasicos.Open;

      if zqBasicos.RecordCount > 0 then
      begin
        while not zqBasicos.Eof do
        begin
          sInicioBasico := IntToStr(iFila);

          Excel.Range['A' + IntToStr(iFila) + ':A' + IntToStr(iFila)].Select;
          Excel.Selection.Value := Chr(39) + zqAnexo.FieldByName('sNumeroActividad').AsString;
          EstablecerContornos;

          Excel.Range['B' + IntToStr(iFila) + ':B' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqAnexo.FieldByName('dCantidadAnexo').AsFloat;
          EstablecerContornos;

          Excel.Range['C' + IntToStr(iFila) + ':C' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqBasicos.FieldByName('sIdBasico').AsString;
          EstablecerContornos;

          Excel.Range['D' + IntToStr(iFila) + ':D' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqBasicos.FieldByName('sDescripcion').AsString;
          EstablecerContornos;

          Excel.Range['E' + IntToStr(iFila) + ':E' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqBasicos.FieldByName('sMedida').AsString;
          EstablecerContornos;

          Excel.Range['F' + IntToStr(iFila) + ':F' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqBasicos.FieldByName('dCantidad').AsFloat;
          EstablecerContornos;

          Excel.Range['G' + IntToStr(iFila) + ':G' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqBasicos.FieldByName('dCostoMN').AsFloat;
          Excel.Selection.NumberFormat := '#,##0.00';
          EstablecerContornos;

          Excel.Range['H' + IntToStr(iFila) + ':H' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqBasicos.FieldByName('dCostoTotalMN').AsFloat;
          Excel.Selection.NumberFormat := '#,##0.00';
          EstablecerContornos;

          Excel.Range['A' + sInicioBasico + ':H'+ IntToStr(iFila)].Select;
          Excel.Selection.Interior.ColorIndex := 37;

          inc(iFila);
          zqBasicos.Next;
        end;
      end;

      if (zqPersonal.RecordCount > 0) or (zqBasicos.RecordCount > 0) then
      begin
        sFinPartida := IntToStr(iFila - 1);
        Excel.Range['I' + sInicioPartida + ':I' + IntToStr(iFila - 1)].Select;
        Excel.Selection.Font.Size := 11;
        Excel.Selection.Font.Name := 'Calibri';
        Excel.Selection.Font.Bold := True;
        Excel.Selection.Interior.ColorIndex := 19;
        Excel.Selection.MergeCells := True;
        Excel.Selection.Formula := '=B' + IntToStr(iFila - 1) + ' * SUM(H' + sInicioPartida + ':H' + IntToStr(iFila - 1) + ')';
        EstablecerContornos;        
      end;
      zqAnexo.Next;
    end;
  end;

  Excel.Range['H' + IntToStr(iFila + 1) + ':H' + IntToStr(iFila + 1)].Select;
  Excel.Selection.Font.Size := 15;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Value := 'TOTAL';
  EstablecerContornos;

  Excel.Range['H' + IntToStr(iFila + 2) + ':H' + IntToStr(iFila + 2)].Select;
  Excel.Selection.Font.Size := 15;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Formula := '=SUM(I6:I' + IntToStr(iFila - 1) + ')';
  EstablecerContornos;

  zqBasicos.Destroy;
  zqPersonal.Destroy;
  zqAnexo.Destroy;
end;
procedure TfrmActividadesAnexo2.cxgrdbtblvwGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if frmBarra1.btnCancel.Enabled = True then
    frmBarra1.btnCancel.Click;
  TcxGridDBTableView(grid_Actividades.ActiveView).DataController.MultiSelect := True;
  PanelSubactividad.Visible    := False;
end;

procedure TfrmActividadesAnexo2.cxgrdbtblvwGrid1DBTableView1DblClick(
  Sender: TObject);
  var
  sCondicion: string;
  sSelect: string;
  inicio, reg: Integer;
  Lugar: Tbookmark;
begin
  if (ActividadesxAnexo.FieldValues['sWbs'] <> NULL) then
  begin
    sCondicion := 'sWbs not Like ' + quotedstr(Trim(ActividadesxAnexo.FieldValues['sWbs']) + '.*');

    if ActividadesxAnexo.FieldValues['sTipoActividad'] = 'Paquete' then
    begin

      lugar := Actividadesxanexo.GetBookmark;

      reg := Paq.indexof(ActividadesxAnexoswbs.asstring);

      if reg = -1 then
      begin
        if Pos(sCondicion, sFiltro) = 0 then
          if sFiltro <> '' then
            sFiltro := sFiltro + ' and ' + scondicion
          else
            sFiltro := sCondicion;

        Paq.Add(ActividadesxAnexoswbs.asstring);

      end
      else
      begin
        inicio := Pos(sCondicion, sFiltro);

        Paq.Delete(reg);
        if (inicio > 0) then
        begin
          if inicio = 1 then
            sFiltro := MidStr(sFiltro, Length(scondicion) + 6, Length(sFiltro))
          else
            sFiltro := MidStr(sFiltro, 1, inicio - 6) + MidStr(sFiltro, inicio + Length(scondicion), length(sfiltro));
        end;
      end;

      ActividadesxAnexo.Filtered := false;
      ActividadesxAnexo.Filter := sfiltro;
      ActividadesxAnexo.Filtered := true;
      try
        actividadesxanexo.GotoBookmark(lugar);
      finally
        actividadesxanexo.FreeBookmark(lugar);
      end;


    end;
  end;
end;

procedure TfrmActividadesAnexo2.cxgrdbtblvwGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    var
  AColumn, BColumn, CColumn: TcxCustomGridTableItem;
begin
 AColumn := (Sender as TcxGridDBTableView).GetColumnByFieldName('iNivel');
    if ARecord.Values[AColumn.Index] = 0 then AStyle := connection.cxstylNiv0 ;
    if ARecord.Values[AColumn.Index] = 1 then AStyle := connection.cxstylNiv1 ;
    if ARecord.Values[AColumn.Index] = 2 then AStyle := connection.cxstylNiv2 ;
    if ARecord.Values[AColumn.Index] = 3 then AStyle := connection.cxstylNiv3 ;
end;

procedure TfrmActividadesAnexo2.costosEquipo;
var
  Libro, Excel, Hoja: Variant;
  NombreDelExcel, sInicioPartida, sFinPartida : String;
  sTotalEquipo : string;
  sTotalHer : string;

  query1, zqAnexo, zqCuad, zqPersonal : TZQuery;

  diferencia : boolean;
  dCantFinal : double;

  iFila : integer;
  iFilaHer : Integer;

  TempPath: String;
  Fs: TStream;
  Pic : TJpegImage;
  imgAux: TImage;
  TmpName: String;

  {$REGION 'Procedimientos Utiles'}
  
  procedure EstablecerContornos;
  begin
      Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeLeft].Weight    := xlThin;
      Excel.Selection.Borders[xlEdgeTop].LineStyle  := xlContinuous;
      Excel.Selection.Borders[xlEdgeTop].Weight     := xlThin;
      Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
      Excel.Selection.Borders[xlEdgeBottom].Weight    := xlThin;
      Excel.Selection.Borders[xlEdgeRight].LineStyle  := xlContinuous;
      Excel.Selection.Borders[xlEdgeRight].Weight     := xlThin;
  end;

  procedure DarFormato(combinar : Boolean ; alinear : string ; Negritas : Boolean ; contornos : Boolean ; fuente : integer);
  begin
    if combinar then
       Excel.Selection.MergeCells := True;

    if alinear = 'centro' then
       Excel.Selection.HorizontalAlignment := xlCenter
    else
       if alinear = 'der' then
          Excel.Selection.HorizontalAlignment := xlRight
       else
       if alinear = 'izq' then
          Excel.Selection.HorizontalAlignment  := xlLeft;

    if Negritas then
       Excel.Selection.Font.Bold := True;

    if contornos then
       EstablecerContornos;

    Excel.Selection.Font.Size := fuente;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Size := 7;
  end;

  function PGetTempDir: string;
  var
     Buffer : Array[0..Max_path] of char;
  begin
    FillChar(Buffer,Max_Path + 1, 0);
    GetTempPath(Max_path, Buffer);
    Result := String(Buffer);
    if Result[Length(Result)] <> '\' then Result := Result + '\';
  end;

function PNombreAleatorio(Longitud: Integer):String;
const
  Chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ';
var
  S: string;
  i, N: integer;
begin
  Randomize;
  S := '';
  for i := 1 to Longitud do begin
    N := Random(Length(Chars)) + 1;
    S := S + Chars[N];
  end;
  Result := S;
end;
{$ENDREGION}

begin
  //Calculo de costos de materiales - Martin Samuel Esteban Diaz;
  {$REGION 'ACCEDER A EXCEL'}
  NombreDelExcel := PGetTempDir + 'TEMP~' + PNombreAleatorio(3) + 'costosmateriales.xls';
  Try
    Excel := CreateOleObject('Excel.Application');
  Except
    On E: Exception do begin
      FreeAndNil(Excel);
      ShowMessage(E.Message);
      Exit;
    end;
  End;

  Excel.Visible := True;
  Excel.DisplayAlerts:= False;
  Libro := Excel.Workbooks.Add;
  Excel.WorkBooks[1].WorkSheets[1].Name := 'EXPLOSION GENERAL DE MATERIALES';

  try
    TmpName := '';
    imgAux := TImage.Create(nil);
    if TmpName='' then begin
      TempPath := ExtractFilePath(Application.Exename);
      TmpName:=TempPath +'imgtempSln1'+formatdatetime('dddddd hhnnss',now)+'.jpg';
      fs := Connection.contrato.CreateBlobStream(Connection.contrato.FieldByName('bImagen'), bmRead);
      If fs.Size > 1 Then Begin
        try
          Pic:=TJpegImage.Create;
          try
            Pic.LoadFromStream(fs);
            imgAux.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          fs.Free;
        End;
        imgAux.Picture.SaveToFile(TmpName);
      End;
    end;
  Finally
    imgAux.Free;
  End;
  Excel.ActiveSheet.Shapes.AddPicture(TmpName, True, True, 10, 2, 100, 47);
  {$ENDREGION}

  {$REGION 'CABECERA DE ARCHIVO'}
  query1 := TZQuery.Create(nil);
  query1.Connection := connection.zConnection;

  zqPersonal := TZQuery.Create(nil);
  zqPersonal.Connection := connection.zConnection;

  zqCuad := TZQuery.Create(nil);
  zqCuad.Connection := connection.zConnection;

  zqAnexo := TZQuery.Create(nil);
  zqAnexo.Connection := connection.zConnection;

  Excel.Columns['A:A'].ColumnWidth := 10;
  Excel.Columns['B:B'].ColumnWidth := 0;
  Excel.Columns['C:D'].ColumnWidth := 15;
  Excel.Columns['E:E'].ColumnWidth := 40;
  Excel.Columns['F:F'].ColumnWidth := 8;
  Excel.Columns['G:H'].ColumnWidth := 10;
  Excel.Columns['I:J'].ColumnWidth := 12;
  Excel.Columns['K:K'].ColumnWidth := 20;

  Excel.Rows[2].RowHeight := 0;

  Excel.Range['D2:E3'].Select;
  DarFormato(True, 'centro', True, False, 20);
  Excel.Selection.Value := 'EXPLOSION GENERAL DE EQUIPOS';
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.Font.Size := 12;
  Excel.Selection.Font.Name := 'Calibri';

  Excel.Range['A6:K6'].Select;
  Excel.Selection.Font.Color := 2;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Interior.ColorIndex := 46;

  Excel.Range['A6:A6'].Select;
  Excel.Selection.Value := 'ACTIVIDAD';

  Excel.Range['B6:B6'].Select;
  Excel.Selection.Value := 'CANT X PART.';

  Excel.Range['C6:C6'].Select;
  Excel.Selection.Value := 'CUADRILLA';

  Excel.Range['D6:D6'].Select;
  Excel.Selection.Value := 'ID EQUIPO';

  Excel.Range['E6:E6'].Select;
  Excel.Selection.Value := 'DESCRIPCION';

  Excel.Range['F6:F6'].Select;
  Excel.Selection.Value := 'MEDIDA';

  Excel.Range['G6:G6'].Select;
  Excel.Selection.Value := 'CANTIDAD';

  Excel.Range['H6:H6'].Select;
  Excel.Selection.Value := 'REND.';

  Excel.Range['I6:I6'].Select;
  Excel.Selection.Value := 'COSTO MN';

  Excel.Range['J6:J6'].Select;
  Excel.Selection.Value := 'SUBTOTAL';

  Excel.Range['K6:K6'].Select;
  Excel.Selection.Value := 'TOTAL';

  {$ENDREGION}

  sTotalEquipo := '';
  sTotalHer := '';
  //Consultamos las actividades del anexo C
  zqAnexo.Active := False;
  zqAnexo.SQL.Clear;
  zqAnexo.SQL.Add('select sWbs, sNumeroActividad, dCantidadAnexo from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sTipoActividad = "Actividad" order by iItemOrden ');
  zqAnexo.Params.ParamByName('contrato').DataType := ftString;
  zqAnexo.Params.ParamByName('contrato').Value    := global_contrato;
  zqAnexo.Params.ParamByName('convenio').DataType := ftString;
  zqAnexo.Params.ParamByName('convenio').Value    := global_convenio;
  zqAnexo.Open;

  dCantFinal := 0.0;
  diferencia := True;
  iFila      := 7;
  if zqAnexo.RecordCount > 0 then
  begin
      while not zqAnexo.Eof do
      begin
           sInicioPartida := IntToStr(iFila);
          //Consultamos el recurso de equipos de acuerdo a la partida.. asi como sus basicos, ademas de su herremienta..
          zqCuad.Active := False;
          zqCuad.SQL.Clear;
          zqCuad.SQL.Add('select r.sIdEquipo, p.sMedida, p.sDescripcion, r.sWbs, r.sNumeroActividad, r.dRendimiento, r.dCantidad, r.dCostoMN, '+
                         'r.dCostoTotalMN, r.fila, "" as sNumeroPaquete from recursosequiposnuevos r '+
                         'inner join equipos p on (p.sContrato = r.sContrato and p.sIdEquipo = r.sIdEquipo) '+
                         'where r.sContrato = :contrato and r.sNumeroActividad = :actividad and r.sWbs = :wbs and (r.fila = 2 or r.fila = 0)' +
                         'union '+
                         'select r.sIdBasico, p.sMedida, p.sDescripcion, r.sWbs, r.sNumeroActividad, r.dRendimiento, r.dCantidad, r.dCostoMN, '+
                         'r.dCostoTotalMN, r.fila, r.sNumeroPaquete from recursosbasicosnuevos r '+
                         'inner join basicos p on (p.sContrato = r.sContrato and p.sIdBasico = r.sIdBasico and (p.eTipoBasico = "EQUIPO" or p.eTipoBasico = "HERRAMIENTA")) ' +
                         'where r.sContrato = :contrato and r.sNumeroActividad = :actividad and r.sWbs = :wbs and (r.fila = 2 or r.fila = 0) '+
                         'order by sNumeroPaquete, Fila DESC ');
          zqCuad.Params.ParamByName('contrato').DataType  := ftString;
          zqCuad.Params.ParamByName('contrato').Value     := global_contrato;
          zqCuad.Params.ParamByName('actividad').DataType := ftString;
          zqCuad.Params.ParamByName('actividad').Value    := zqAnexo.FieldValues['sNumeroActividad'];
          zqCuad.Params.ParamByName('wbs').DataType       := ftString;
          zqCuad.Params.ParamByName('wbs').Value          := zqAnexo.FieldValues['sWbs'];
          zqCuad.Open;

          while not zqCuad.Eof do
          begin
              //Inicia la impresion de los datos
              Excel.Range['A' + IntToStr(iFila) + ':A' + IntToStr(iFila)].Select;
              Excel.Selection.Value := Chr(39) + zqAnexo.FieldByName('sNumeroActividad').AsString;
              EstablecerContornos;

              Excel.Range['B' + IntToStr(iFila) + ':B' + IntToStr(iFila)].Select;
              Excel.Selection.Value := zqAnexo.FieldByName('dCantidadAnexo').AsFloat;
              EstablecerContornos;

              Excel.Range['C' + IntToStr(iFila) + ':C' + IntToStr(iFila)].Select;
              Excel.Selection.Value := Chr(39) + zqCuad.FieldByName('sIdEquipo').AsString;
              EstablecerContornos;

              Excel.Range['D' + IntToStr(iFila) + ':D' + IntToStr(iFila)].Select;
              Excel.Selection.Value := Chr(39) + zqCuad.FieldByName('sIdEquipo').AsString;
              EstablecerContornos;

              Excel.Range['E' + IntToStr(iFila) + ':E' + IntToStr(iFila)].Select;
              Excel.Selection.Value := zqCuad.FieldByName('sDescripcion').AsString;
              EstablecerContornos;

              Excel.Range['F' + IntToStr(iFila) + ':F' + IntToStr(iFila)].Select;
              Excel.Selection.Value := zqCuad.FieldByName('sMedida').AsString;
              EstablecerContornos;

              Excel.Range['G' + IntToStr(iFila) + ':G' + IntToStr(iFila)].Select;
              Excel.Selection.Value := zqCuad.FieldByName('dCantidad').AsFloat;
              Excel.Selection.NumberFormat := '#,##0.0000';
              EstablecerContornos;

              Excel.Range['H' + IntToStr(iFila) + ':H' + IntToStr(iFila)].Select;
              Excel.Selection.Value := zqCuad.FieldByName('dRendimiento').AsFloat;
              Excel.Selection.NumberFormat := '#0.00000';
              EstablecerContornos;

              Excel.Range['I' + IntToStr(iFila) + ':I' + IntToStr(iFila)].Select;
              Excel.Selection.Value := zqCuad.FieldByName('dCostoMN').AsFloat;
              Excel.Selection.NumberFormat := '#,##0.00';
              EstablecerContornos;

              Excel.Range['J' + IntToStr(iFila) + ':J' + IntToStr(iFila)].Select;
              Excel.Selection.Formula := zqCuad.FieldByName('dCostoTotalMN').AsFloat;
              Excel.Selection.NumberFormat := '#,##0.00';
              EstablecerContornos;

              inc(iFila);
              zqCuad.Next;
          end;

          if zqCuad.RecordCount > 0 then
          begin
              sFinPartida := IntToStr(iFila - 1);
              Excel.Range['K' + IntToStr(iFila - 1) + ':K' + IntToStr(iFila - 1)].Select;
              Excel.Selection.Font.Size := 11;
              Excel.Selection.Font.Name := 'Calibri';
              Excel.Selection.Font.Bold := True;
              Excel.Selection.Interior.ColorIndex := 19;
              Excel.Selection.Formula := '=B' + IntToStr(iFila - 1) + ' * SUM(J' + sInicioPartida + ':J' + sFinPartida + ')';
              EstablecerContornos;

              Excel.Range['A' + sInicioPartida + ':J' + sFinPartida].Select;
              if diferencia then
              begin
                 Excel.Selection.Interior.ColorIndex := 2;
                 diferencia := False;
              end
              else
              begin
                 diferencia := True;
                 Excel.Selection.Interior.ColorIndex := 34;
              end;
          end;

          zqAnexo.Next;
      end;

      Excel.Range['I' + IntToStr(iFila + 1) + ':J' + IntToStr(iFila + 1)].Select;
      Excel.Selection.MergeCells := True;
      Excel.Selection.Value := 'TOTAL EQUIPO';

      Excel.Range['K' + IntToStr(iFila + 1) + ':K' + IntToStr(iFila + 1)].Select;
      Excel.Selection.Formula := '=SUM(K7:K' + IntToStr(iFila - 1) + ')';
      sTotalEquipo := 'K' + IntToStr(iFila + 1);
  end;

  inc(iFila, 3);
  Excel.Range['A' + IntToStr(iFila) + ':K' + IntToStr(iFila)].Select;
  Excel.Selection.Font.Color := 2;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Interior.ColorIndex := 46;

  Excel.Range['A' + IntToStr(iFila) + ':A' + IntToStr(iFila)].Select;
  Excel.Selection.Value := 'ACTIVIDAD';

  Excel.Range['B' + IntToStr(iFila) + ':B' + IntToStr(iFila)].Select;
  Excel.Selection.Value := 'CANT X PART.';

  Excel.Range['C' + IntToStr(iFila) + ':C' + IntToStr(iFila)].Select;
  Excel.Selection.Value := 'CUADRILLA';

  Excel.Range['D' + IntToStr(iFila) + ':D' + IntToStr(iFila)].Select;
  Excel.Selection.Value := 'ID EQUIPO';

  Excel.Range['E' + IntToStr(iFila) + ':E' + IntToStr(iFila)].Select;
  Excel.Selection.Value := 'DESCRIPCION';

  Excel.Range['F' + IntToStr(iFila) + ':F' + IntToStr(iFila)].Select;
  Excel.Selection.Value := 'MEDIDA';

  Excel.Range['G' + IntToStr(iFila) + ':G' + IntToStr(iFila)].Select;
  Excel.Selection.Value := 'CANTIDAD';

  Excel.Range['H' + IntToStr(iFila) + ':H' + IntToStr(iFila)].Select;
  Excel.Selection.Value := 'REND.';

  Excel.Range['I' + IntToStr(iFila) + ':I' + IntToStr(iFila)].Select;
  Excel.Selection.Value := 'COSTO MN';

  Excel.Range['J' + IntToStr(iFila) + ':J' + IntToStr(iFila)].Select;
  Excel.Selection.Value := 'SUBTOTAL';

  Excel.Range['K' + IntToStr(iFila) + ':K' + IntToStr(iFila)].Select;
  Excel.Selection.Value := 'TOTAL';

  inc(iFila);
  if zqAnexo.RecordCount > 0 then
  begin
      zqAnexo.First;
      iFilaHer := iFila;
      while not zqAnexo.Eof do
      begin
           sInicioPartida := IntToStr(iFila);
          //Consultamos el recurso de equipos de acuerdo a la partida.. asi como sus basicos, ademas de su herremienta..
          zqCuad.Active := False;
          zqCuad.SQL.Clear;
          zqCuad.SQL.Add('select r.sIdHerramientas, p.sMedida, p.sDescripcion, r.sWbs, r.sNumeroActividad, r.dRendimiento, r.dCantidad, r.dCostoMN, '+
                         'r.dCostoTotalMN, r.fila, r.sNumeroPaquete from recursosherramientasnuevos r '+
                         'inner join herramientas p on (p.sContrato = r.sContrato and p.sIdHerramientas = r.sIdHerramientas and r.eTipoHerramienta = "PERSONAL") '+
                         'where r.sContrato = :contrato and r.sNumeroActividad = :actividad and r.sWbs = :wbs and (r.fila = 2 or r.fila = 0) '+
                         'order by sNumeroPaquete, Fila DESC ');
          zqCuad.Params.ParamByName('contrato').DataType  := ftString;
          zqCuad.Params.ParamByName('contrato').Value     := global_contrato;
          zqCuad.Params.ParamByName('actividad').DataType := ftString;
          zqCuad.Params.ParamByName('actividad').Value    := zqAnexo.FieldValues['sNumeroActividad'];
          zqCuad.Params.ParamByName('wbs').DataType       := ftString;
          zqCuad.Params.ParamByName('wbs').Value          := zqAnexo.FieldValues['sWbs'];
          zqCuad.Open;

          while not zqCuad.Eof do
          begin
              //Inicia la impresion de los datos
              Excel.Range['A' + IntToStr(iFila) + ':A' + IntToStr(iFila)].Select;
              Excel.Selection.Value := Chr(39) + zqAnexo.FieldByName('sNumeroActividad').AsString;
              EstablecerContornos;

              Excel.Range['B' + IntToStr(iFila) + ':B' + IntToStr(iFila)].Select;
              Excel.Selection.Value := zqAnexo.FieldByName('dCantidadAnexo').AsFloat;
              EstablecerContornos;

              Excel.Range['C' + IntToStr(iFila) + ':C' + IntToStr(iFila)].Select;
              Excel.Selection.Value := Chr(39) + zqCuad.FieldByName('sIdHerramientas').AsString;
              EstablecerContornos;

              Excel.Range['D' + IntToStr(iFila) + ':D' + IntToStr(iFila)].Select;
              Excel.Selection.Value := Chr(39) + zqCuad.FieldByName('sIdHerramientas').AsString;
              EstablecerContornos;

              Excel.Range['E' + IntToStr(iFila) + ':E' + IntToStr(iFila)].Select;
              Excel.Selection.Value := zqCuad.FieldByName('sDescripcion').AsString;
              EstablecerContornos;

              Excel.Range['F' + IntToStr(iFila) + ':F' + IntToStr(iFila)].Select;
              Excel.Selection.Value := zqCuad.FieldByName('sMedida').AsString;
              EstablecerContornos;

              Excel.Range['G' + IntToStr(iFila) + ':G' + IntToStr(iFila)].Select;
              Excel.Selection.Value := zqCuad.FieldByName('dCantidad').AsFloat;
              Excel.Selection.NumberFormat := '#,##0.0000';
              EstablecerContornos;

              Excel.Range['H' + IntToStr(iFila) + ':H' + IntToStr(iFila)].Select;
              Excel.Selection.Value := zqCuad.FieldByName('dRendimiento').AsFloat;
              Excel.Selection.NumberFormat := '#0.00000';
              EstablecerContornos;

              Excel.Range['I' + IntToStr(iFila) + ':I' + IntToStr(iFila)].Select;
              Excel.Selection.Value := zqCuad.FieldByName('dCostoMN').AsFloat;
              Excel.Selection.NumberFormat := '#,##0.00';
              EstablecerContornos;

              Excel.Range['J' + IntToStr(iFila) + ':J' + IntToStr(iFila)].Select;
              Excel.Selection.Formula := zqCuad.FieldByName('dCostoTotalMN').AsFloat;
              Excel.Selection.NumberFormat := '#,##0.00';
              EstablecerContornos;

              inc(iFila);
              zqCuad.Next;
          end;

          if zqCuad.RecordCount > 0 then
          begin
              sFinPartida := IntToStr(iFila - 1);
              Excel.Range['K' + IntToStr(iFila - 1) + ':K' + IntToStr(iFila - 1)].Select;
              Excel.Selection.Font.Size := 11;
              Excel.Selection.Font.Name := 'Calibri';
              Excel.Selection.Font.Bold := True;
              Excel.Selection.Interior.ColorIndex := 19;
              Excel.Selection.Formula := '=B' + IntToStr(iFila - 1) + ' * SUM(J' + sInicioPartida + ':J' + sFinPartida + ')';
              EstablecerContornos;

              Excel.Range['A' + sInicioPartida + ':J' + sFinPartida].Select;
              if diferencia then
              begin
                 Excel.Selection.Interior.ColorIndex := 2;
                 diferencia := False;
              end
              else
              begin
                 diferencia := True;
                 Excel.Selection.Interior.ColorIndex := 34;
              end;
          end;

          zqAnexo.Next;
      end;

      Excel.Range['I' + IntToStr(iFila + 1) + ':J' + IntToStr(iFila + 1)].Select;
      Excel.Selection.MergeCells := True;
      Excel.Selection.Value := 'TOTAL SEG Y H.';
      Excel.Selection.HorizontalAlignment := xlRight;

      Excel.Range['K' + IntToStr(iFila + 1) + ':K' + IntToStr(iFila + 1)].Select;
      Excel.Selection.Formula := '=SUM(K' + IntToStr(iFilaHer) + ':K' + IntToStr(iFila - 1) + ')';
      sTotalHer := 'K' + IntToStr(iFila + 1);      
  end;

  Excel.Range['H' + IntToStr(iFila + 2) + ':J' + IntToStr(iFila + 2)].Select;
  Excel.Selection.MergeCells := True;
  Excel.Selection.Value := 'TOTAL:';
  Excel.Selection.HorizontalAlignment := xlRight;
  Excel.Selection.Font.Size := 10;

  Excel.Range['K' + IntToStr(iFila + 2) + ':K' + IntToStr(iFila + 2)].Select;
  Excel.Selection.Formula := '=' + sTotalEquipo + ' + ' + sTotalHer;
  Excel.Selection.NumberFormat := '$' + '#,##0.00';
  Excel.Selection.Font.Size := 10;

  query1.Destroy;
  zqAnexo.Destroy;
end;

procedure TfrmActividadesAnexo2.costosMateriales;
var
  Libro, Excel, Hoja: Variant;
  NombreDelExcel : String;
  
  query1, zqAnexo : TZQuery;

  iFila : integer;

  TempPath: String;
  Fs: TStream;
  Pic : TJpegImage;
  imgAux: TImage;
  TmpName: String;

  procedure EstablecerContornos;
  begin
    Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
    Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
    Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
    Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;
  end;

  procedure DarFormato(combinar : Boolean ; alinear : string ; Negritas : Boolean ; contornos : Boolean ; fuente : integer);
  begin
    if combinar then
    begin
      Excel.Selection.MergeCells := True;
    end;
    
    if alinear = 'centro' then
    begin
      Excel.Selection.HorizontalAlignment := xlCenter;
    end

    else if alinear = 'der' then
    begin
      Excel.Selection.HorizontalAlignment := xlRight;
    end

    else if alinear = 'izq' then
    begin
      Excel.Selection.HorizontalAlignment  := xlLeft;
    end;

    if Negritas then
    begin
      Excel.Selection.Font.Bold := True;
    end;

    if contornos then
    begin
      EstablecerContornos;
    end;

    Excel.Selection.Font.Size := fuente;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Size := 7;
  end;

  function PGetTempDir: string;
  var
     Buffer : Array[0..Max_path] of char;
  begin
    FillChar(Buffer,Max_Path + 1, 0);
    GetTempPath(Max_path, Buffer);
    Result := String(Buffer);
    if Result[Length(Result)] <> '\' then Result := Result + '\';
  end;

function PNombreAleatorio(Longitud: Integer):String;
const
  Chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ';
var
  S: string;
  i, N: integer;
begin
  Randomize;
  S := '';
  for i := 1 to Longitud do
  begin
    N := Random(Length(Chars)) + 1;
    S := S + Chars[N];
  end;
  Result := S;
end;

begin
  //Explosion de materiales - Martin Samuel Esteban Diaz;
  {$REGION 'ACCEDER A EXCEL'}
  NombreDelExcel := PGetTempDir + 'TEMP~' + PNombreAleatorio(3) + 'costosmateriales.xls';
  Try
    Excel := CreateOleObject('Excel.Application');
  Except
    On E: Exception do begin
      FreeAndNil(Excel);
      ShowMessage(E.Message);
      Exit;
    end;
  End;

  Excel.Visible := True;
  Excel.DisplayAlerts:= False;
  Libro := Excel.Workbooks.Add;
  Excel.WorkBooks[1].WorkSheets[1].Name := 'EXPLOSION GENERAL DE MATERIALES';


  try
    TmpName := '';
    imgAux := TImage.Create(nil);
    if TmpName='' then begin
      TempPath := ExtractFilePath(Application.Exename);
      TmpName:=TempPath +'imgtempSln1'+formatdatetime('dddddd hhnnss',now)+'.jpg';
      fs := Connection.contrato.CreateBlobStream(Connection.contrato.FieldByName('bImagen'), bmRead);
      If fs.Size > 1 Then Begin
        try
          Pic:=TJpegImage.Create;
          try
            Pic.LoadFromStream(fs);
            imgAux.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          fs.Free;
        End;
        imgAux.Picture.SaveToFile(TmpName);
      End;
    end;
  Finally
    imgAux.Free;
  End;
  Excel.ActiveSheet.Shapes.AddPicture(TmpName, True, True, 10, 2, 100, 47);
  {$ENDREGION}

  {$REGION 'CONSULTA DATOS'}
  query1 := TZQuery.Create(nil);
  query1.Connection := connection.zConnection;

  zqAnexo := TZQuery.Create(nil);
  zqAnexo.Connection := connection.zConnection;

  Excel.Columns['A:A'].ColumnWidth := 15;
  Excel.Columns['B:B'].ColumnWidth := 40;
  Excel.Columns['C:C'].ColumnWidth := 12;
  Excel.Columns['D:D'].ColumnWidth := 10;
  Excel.Columns['E:E'].ColumnWidth := 15;
  Excel.Columns['F:F'].ColumnWidth := 15;

  Excel.Range['B2:D3'].Select;
  DarFormato(True, 'centro', True, False, 20);
  Excel.Selection.Value := 'EXPLOSION GENERAL DE MATERIALES';
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.Font.Size := 12;
  Excel.Selection.Font.Name := 'Calibri';

  Excel.Range['A5:F' + IntToStr(iFila + 5)].Select;
  DarFormato(False, 'izq', False, True, 10);
  Excel.Selection.Font.Size := 10;

  Excel.Range['A5:F5'].Select;
  Excel.Selection.Font.Color := 2;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Interior.ColorIndex := 46;

  Excel.Range['A5:A5'].Select;
  Excel.Selection.Value := 'ID MATERIAL';

  Excel.Range['B5:B5'].Select;
  Excel.Selection.Value := 'DESCRIPCION';

  Excel.Range['C5:C5'].Select;
  Excel.Selection.Value := 'MEDIDA';

  Excel.Range['D5:D5'].Select;
  Excel.Selection.Value := 'CANTIDAD';

  Excel.Range['E5:E5'].Select;
  Excel.Selection.Value := 'PU.';

  Excel.Range['F5:F5'].Select;
  Excel.Selection.Value := 'TOTAL:';

  //Consultamos las actividades del anexo C
  zqAnexo.Active := False;
  zqAnexo.SQL.Clear;
  zqAnexo.SQL.Add('select sWbs, sNumeroActividad, dCantidadAnexo from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sTipoActividad = "Actividad" order by iItemOrden ');
  zqAnexo.Params.ParamByName('contrato').DataType := ftString;
  zqAnexo.Params.ParamByName('contrato').Value    := global_contrato;
  zqAnexo.Params.ParamByName('convenio').DataType := ftString;
  zqAnexo.Params.ParamByName('convenio').Value    := global_convenio;
  zqAnexo.Open;

  iFila := 6;
  while not zqAnexo.Eof do
  begin
      //Consultamos el recurso de material de acuerdo a la partida..
      query1.Active := False;
      query1.SQL.Clear;
      query1.SQL.Add('select i.sIdInsumo, i.mDescripcion, i.sMedida, sum(r.dCantidad)as cantidad, '+
                     'r.dCostoTotalMN, r.dCostoTotalDLL from recursosanexosnuevos r '+
                     'inner join insumos i on(i.sContrato = r.sContrato and r.sIdInsumo = i.sIdInsumo) '+
                     'where r.sContrato = :contrato and r.sNumeroActividad = :actividad and r.sWbs = :Wbs group by r.sIdInsumo');
      query1.Params.ParamByName('contrato').DataType  := ftString;
      query1.Params.ParamByName('contrato').Value     := global_contrato;
      query1.Params.ParamByName('actividad').DataType := ftString;
      query1.Params.ParamByName('actividad').Value    := zqAnexo.FieldValues['sNumeroActividad'];
      query1.Params.ParamByName('Wbs').DataType       := ftString;
      query1.Params.ParamByName('Wbs').Value          := zqAnexo.FieldValues['sWbs'];
      query1.Open;

      if query1.RecordCount > 0 then
      begin
        while not query1.Eof do begin
          //Inicia la impresion de los datos
          Excel.Range['A' + IntToStr(iFila) + ':A' + IntToStr(iFila)].Select;
          Excel.Selection.Value := Chr(39) + query1.FieldByName('sIdInsumo').AsString;
          Excel.Selection.NumberFormat := '';
          Excel.Selection.HorizontalAlignment := xlJustify;
          EstablecerContornos;

          Excel.Range['B' + IntToStr(iFila) + ':B' + IntToStr(iFila)].Select;
          Excel.Selection.Value := query1.FieldByName('mDescripcion').AsString;
          Excel.Selection.HorizontalAlignment := xlJustify;
          EstablecerContornos;

          Excel.Range['C' + IntToStr(iFila) + ':C' + IntToStr(iFila)].Select;
          Excel.Selection.Value := query1.FieldByName('sMedida').AsString;
          EstablecerContornos;

          Excel.Range['D' + IntToStr(iFila) + ':D' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqAnexo.FieldByName('dCantidadAnexo').AsFloat;
          Excel.Selection.NumberFormat := '#0.0000';
          EstablecerContornos;

          Excel.Range['E' + IntToStr(iFila) + ':E' + IntToStr(iFila)].Select;
          Excel.Selection.Value := query1.FieldByName('dCostoTotalMN').AsFloat;
          Excel.Selection.NumberFormat := '$' + '#,##0.00';
          EstablecerContornos;

          Excel.Range['F' + IntToStr(iFila) + ':F' + IntToStr(iFila)].Select;
          Excel.Selection.Formula := '=D' + IntToStr(iFila) + '* E' + IntToStr(iFila);
          Excel.Selection.NumberFormat := '#,##0.00';
          EstablecerContornos;

          inc(iFila);
          query1.Next;
        end;
      end;
      zqAnexo.Next;
  end;

  zqAnexo.First;
  while not zqAnexo.Eof do begin
    query1.Active := False;
    query1.SQL.Clear;
    query1.SQL.Add('select i.sIdBasico, i.sDescripcion, i.sMedida, r.dCantidad as cantidad, '+
                           'r.dCostoTotalMN, r.dCostoMN, r.dCostoTotalDLL '+
                   'from recursosbasicosnuevos r '+
                   'inner join basicos i on(i.sContrato = r.sContrato and r.sIdBasico = i.sIdBasico) '+
                   'where r.sContrato = :contrato '+
                   'and r.sNumeroActividad = :actividad '+
                   'and r.sWbs = :wbs '+
                   'and eTipoBasico = "MATERIAL" '+
                   'order by r.sIdBasico');

    query1.Params.ParamByName('contrato').DataType  := ftString;
    query1.Params.ParamByName('contrato').Value     := global_contrato;
    query1.Params.ParamByName('actividad').DataType := ftString;
    query1.Params.ParamByName('actividad').Value    := zqAnexo.FieldValues['sNumeroActividad'];
    query1.Params.ParamByName('wbs').DataType       := ftString;
    query1.Params.ParamByName('wbs').Value          := zqAnexo.FieldValues['sWbs'];
    query1.Open;

    if query1.RecordCount > 0 then begin
      while not query1.Eof do begin
        //Inicia la impresion de los datos
        Excel.Range['A' + IntToStr(iFila) + ':A' + IntToStr(iFila)].Select;
        Excel.Selection.Value := Chr(39) + query1.FieldByName('sIdBasico').AsString;
        Excel.Selection.NumberFormat := '';
        Excel.Selection.HorizontalAlignment := xlJustify;
        EstablecerContornos;

        Excel.Range['B' + IntToStr(iFila) + ':B' + IntToStr(iFila)].Select;
        Excel.Selection.Value := query1.FieldByName('sDescripcion').AsString;
        Excel.Selection.HorizontalAlignment := xlJustify;
        Excel.Selection.WrapText := True;
        EstablecerContornos;

        Excel.Range['C' + IntToStr(iFila) + ':C' + IntToStr(iFila)].Select;
        Excel.Selection.Value := query1.FieldByName('sMedida').AsString;
        EstablecerContornos;

        Excel.Range['D' + IntToStr(iFila) + ':D' + IntToStr(iFila)].Select;
        Excel.Selection.Value := zqAnexo.FieldByName('dCantidadAnexo').AsFloat;
        Excel.Selection.NumberFormat := '#0.0000';
        EstablecerContornos;

        Excel.Range['E' + IntToStr(iFila) + ':E' + IntToStr(iFila)].Select;
        Excel.Selection.Value := query1.FieldByName('dCostoTotalMN').AsFloat;
        Excel.Selection.NumberFormat := '$' + '#,##0.00';
        EstablecerContornos;

        Excel.Range['F' + IntToStr(iFila) + ':F' + IntToStr(iFila)].Select;
        Excel.Selection.Formula := '=D' + IntToStr(iFila) + '* E' + IntToStr(iFila);
        Excel.Selection.NumberFormat := '#,##0.00';
        EstablecerContornos;

        inc(iFila);
        query1.Next;
      end;
    end;
    zqAnexo.Next;
  end;

  Excel.Range['E' + IntToStr(iFila) + ':E' + IntToStr(iFila)].Select;
  Excel.Selection.Value := 'TOTAL:';
  Excel.Selection.Font.Size := 10;
  EstablecerContornos;

  Excel.Range['F' + IntToStr(iFila) + ':F' + IntToStr(iFila)].Select;
  Excel.Selection.Formula := '=SUM(F6:F' + IntToStr(iFila - 1);
  Excel.Selection.NumberFormat := '$' + '#,##0.00';
  Excel.Selection.Font.Size := 10;
  EstablecerContornos;

  query1.Destroy;
  zqAnexo.Destroy;
end;

procedure TfrmActividadesAnexo2.costosBasicos;
var
  Libro, Excel, Hoja: Variant;
  NombreDelExcel : String;
  
  query1, zqAnexo : TZQuery;

  iFila : integer;

  TempPath: String;
  Fs: TStream;
  Pic : TJpegImage;
  imgAux: TImage;
  TmpName: String;

  procedure EstablecerContornos;
  begin
    Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
    Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
    Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
    Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;
  end;

  procedure DarFormato(combinar : Boolean ; alinear : string ; Negritas : Boolean ; contornos : Boolean ; fuente : integer);
  begin
    if combinar then
    begin
      Excel.Selection.MergeCells := True;
    end;
    
    if alinear = 'centro' then
    begin
      Excel.Selection.HorizontalAlignment := xlCenter;
    end

    else if alinear = 'der' then
    begin
      Excel.Selection.HorizontalAlignment := xlRight;
    end

    else if alinear = 'izq' then
    begin
      Excel.Selection.HorizontalAlignment  := xlLeft;
    end;

    if Negritas then
    begin
      Excel.Selection.Font.Bold := True;
    end;

    if contornos then
    begin
      EstablecerContornos;
    end;

    Excel.Selection.Font.Size := fuente;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Size := 7;
  end;

  function PGetTempDir: string;
  var
     Buffer : Array[0..Max_path] of char;
  begin
    FillChar(Buffer,Max_Path + 1, 0);
    GetTempPath(Max_path, Buffer);
    Result := String(Buffer);
    if Result[Length(Result)] <> '\' then Result := Result + '\';
  end;

function PNombreAleatorio(Longitud: Integer):String;
const
  Chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ';
var
  S: string;
  i, N: integer;
begin
  Randomize;
  S := '';
  for i := 1 to Longitud do begin
    N := Random(Length(Chars)) + 1;
    S := S + Chars[N];
  end;
  Result := S;
end;

begin
  //Calculo de costos de materiales - Martin Samuel Esteban Diaz;
  {$REGION 'ACCEDER A EXCEL'}
  NombreDelExcel := PGetTempDir + 'TEMP~' + PNombreAleatorio(3) + 'costosmateriales.xls';
  Try
    Excel := CreateOleObject('Excel.Application');
  Except
    On E: Exception do begin
      FreeAndNil(Excel);
      ShowMessage(E.Message);
      Exit;
    end;
  End;

  Excel.Visible := True;
  Excel.DisplayAlerts:= False;
  Libro := Excel.Workbooks.Add;
  Excel.WorkBooks[1].WorkSheets[1].Name := 'EXPLOSION GENERAL DE MATERIALES';


  try
    TmpName := '';
    imgAux := TImage.Create(nil);
    if TmpName='' then begin
      TempPath := ExtractFilePath(Application.Exename);
      TmpName:=TempPath +'imgtempSln1'+formatdatetime('dddddd hhnnss',now)+'.jpg';
      fs := Connection.contrato.CreateBlobStream(Connection.contrato.FieldByName('bImagen'), bmRead);
      If fs.Size > 1 Then Begin
        try
          Pic:=TJpegImage.Create;
          try
            Pic.LoadFromStream(fs);
            imgAux.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          fs.Free;
        End;
        imgAux.Picture.SaveToFile(TmpName);
      End;
    end;
  Finally
    imgAux.Free;
  End;
  Excel.ActiveSheet.Shapes.AddPicture(TmpName, True, True, 10, 2, 100, 47);
  {$ENDREGION}

  {$REGION 'CONSULTA DATOS'}
  query1 := TZQuery.Create(nil);
  query1.Connection := connection.zConnection;

  zqAnexo := TZQuery.Create(nil);
  zqAnexo.Connection := connection.zConnection;

  Excel.Columns['A:A'].ColumnWidth := 15;
  Excel.Columns['B:B'].ColumnWidth := 40;
  Excel.Columns['C:C'].ColumnWidth := 12;
  Excel.Columns['D:D'].ColumnWidth := 10;
  Excel.Columns['E:E'].ColumnWidth := 15;
  Excel.Columns['F:F'].ColumnWidth := 15;

  Excel.Range['B2:D3'].Select;
  DarFormato(True, 'centro', True, False, 20);
  Excel.Selection.Value := 'EXPLOSION GENERAL DE BASICOS';
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.Font.Size := 12;
  Excel.Selection.Font.Name := 'Calibri';

  Excel.Range['A5:F' + IntToStr(iFila + 5)].Select;
  DarFormato(False, 'izq', False, True, 10);
  Excel.Selection.Font.Size := 10;

  Excel.Range['A5:F5'].Select;
  Excel.Selection.Font.Color := 2;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Interior.ColorIndex := 46;

  Excel.Range['A5:A5'].Select;
  Excel.Selection.Value := 'ID MATERIAL';

  Excel.Range['B5:B5'].Select;
  Excel.Selection.Value := 'DESCRIPCION';

  Excel.Range['C5:C5'].Select;
  Excel.Selection.Value := 'MEDIDA';

  Excel.Range['D5:D5'].Select;
  Excel.Selection.Value := 'CANTIDAD';

  Excel.Range['E5:E5'].Select;
  Excel.Selection.Value := 'PU.';

  Excel.Range['F5:F5'].Select;
  Excel.Selection.Value := 'TOTAL:';

  //Consultamos las actividades del anexo C
  zqAnexo.Active := False;
  zqAnexo.SQL.Clear;
  zqAnexo.SQL.Add('select sWbs, sNumeroActividad, dCantidadAnexo from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sTipoActividad = "Actividad" order by iItemOrden ');
  zqAnexo.Params.ParamByName('contrato').DataType := ftString;
  zqAnexo.Params.ParamByName('contrato').Value    := global_contrato;
  zqAnexo.Params.ParamByName('convenio').DataType := ftString;
  zqAnexo.Params.ParamByName('convenio').Value    := global_convenio;
  zqAnexo.Open;

  iFila := 6;
  while not zqAnexo.Eof do
  begin
      //Consultamos el recurso de material de acuerdo a la partida..
      query1.Active := False;
      query1.SQL.Clear;
      query1.SQL.Add('select i.sIdInsumo, i.mDescripcion, i.sMedida, sum(r.dCantidad)as cantidad, '+
                    'r.dCostoTotalMN, r.dCostoTotalDLL from recursosanexosnuevos r '+
                    'inner join insumos i on(i.sContrato = r.sContrato and r.sIdInsumo = i.sIdInsumo) '+
                    'where r.sContrato = :contrato and r.sNumeroActividad = :actividad and r.sWbs = :Wbs group by r.sIdInsumo');
      query1.Params.ParamByName('contrato').DataType  := ftString;
      query1.Params.ParamByName('contrato').Value     := global_contrato;
      query1.Params.ParamByName('actividad').DataType := ftString;
      query1.Params.ParamByName('actividad').Value    := zqAnexo.FieldValues['sNumeroActividad'];
      query1.Params.ParamByName('Wbs').DataType       := ftString;
      query1.Params.ParamByName('Wbs').Value          := zqAnexo.FieldValues['sWbs'];
      query1.Open;

      if query1.RecordCount > 0 then
      begin
        while not query1.Eof do begin
          //Inicia la impresion de los datos
          Excel.Range['A' + IntToStr(iFila) + ':A' + IntToStr(iFila)].Select;
          Excel.Selection.Value := Chr(39) + query1.FieldByName('sIdInsumo').AsString;
          Excel.Selection.NumberFormat := '';
          Excel.Selection.HorizontalAlignment := xlJustify;
          EstablecerContornos;

          Excel.Range['B' + IntToStr(iFila) + ':B' + IntToStr(iFila)].Select;
          Excel.Selection.Value := query1.FieldByName('mDescripcion').AsString;
          Excel.Selection.HorizontalAlignment := xlJustify;
          Excel.Selection.WrapText := True;
          EstablecerContornos;

          Excel.Range['C' + IntToStr(iFila) + ':C' + IntToStr(iFila)].Select;
          Excel.Selection.Value := query1.FieldByName('sMedida').AsString;
          EstablecerContornos;

          Excel.Range['D' + IntToStr(iFila) + ':D' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqAnexo.FieldByName('dCantidadAnexo').AsFloat;
          Excel.Selection.NumberFormat := '#0.0000';
          EstablecerContornos;

          Excel.Range['E' + IntToStr(iFila) + ':E' + IntToStr(iFila)].Select;
          Excel.Selection.Value := query1.FieldByName('dCostoTotalMN').AsFloat;
          Excel.Selection.NumberFormat := '$' + '#,##0.00';
          EstablecerContornos;

          Excel.Range['F' + IntToStr(iFila) + ':F' + IntToStr(iFila)].Select;
          Excel.Selection.Formula := '=D' + IntToStr(iFila) + '* E' + IntToStr(iFila);
          Excel.Selection.NumberFormat := '#,##0.00';
          EstablecerContornos;

          inc(iFila);
          query1.Next;
        end;
      end;
      zqAnexo.Next;
  end;

  Excel.Range['E' + IntToStr(iFila) + ':E' + IntToStr(iFila)].Select;
  Excel.Selection.Value := 'TOTAL:';
  Excel.Selection.Font.Size := 10;
  EstablecerContornos;

  Excel.Range['F' + IntToStr(iFila) + ':F' + IntToStr(iFila)].Select;
  Excel.Selection.Formula := '=SUM(F6:F' + IntToStr(iFila - 1);
  Excel.Selection.NumberFormat := '$' + '#,##0.00';
  Excel.Selection.Font.Size := 10;
  EstablecerContornos;

  query1.Destroy;
  zqAnexo.Destroy;
end;

procedure TfrmActividadesAnexo2.costosHerramientas;
var
  Libro, Excel, Hoja: Variant;
  NombreDelExcel : String;
  
  query1, zqAnexo : TZQuery;

  iFila : integer;

  TempPath: String;
  Fs: TStream;
  Pic : TJpegImage;
  imgAux: TImage;
  TmpName: String;

  procedure EstablecerContornos;
  begin
    Excel.Selection.Borders[xlEdgeLeft].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeLeft].Weight := xlThin;
    Excel.Selection.Borders[xlEdgeTop].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeTop].Weight := xlThin;
    Excel.Selection.Borders[xlEdgeBottom].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeBottom].Weight := xlThin;
    Excel.Selection.Borders[xlEdgeRight].LineStyle := xlContinuous;
    Excel.Selection.Borders[xlEdgeRight].Weight := xlThin;
  end;

  procedure DarFormato(combinar : Boolean ; alinear : string ; Negritas : Boolean ; contornos : Boolean ; fuente : integer);
  begin
    if combinar then
    begin
      Excel.Selection.MergeCells := True;
    end;
    
    if alinear = 'centro' then
    begin
      Excel.Selection.HorizontalAlignment := xlCenter;
    end

    else if alinear = 'der' then
    begin
      Excel.Selection.HorizontalAlignment := xlRight;
    end

    else if alinear = 'izq' then
    begin
      Excel.Selection.HorizontalAlignment  := xlLeft;
    end;

    if Negritas then
    begin
      Excel.Selection.Font.Bold := True;
    end;

    if contornos then
    begin
      EstablecerContornos;
    end;

    Excel.Selection.Font.Size := fuente;
    Excel.Selection.VerticalAlignment := xlCenter;
    Excel.Selection.Font.Size := 7;
  end;

  function PGetTempDir: string;
  var
     Buffer : Array[0..Max_path] of char;
  begin
    FillChar(Buffer,Max_Path + 1, 0);
    GetTempPath(Max_path, Buffer);
    Result := String(Buffer);
    if Result[Length(Result)] <> '\' then Result := Result + '\';
  end;

function PNombreAleatorio(Longitud: Integer):String;
const
  Chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ';
var
  S: string;
  i, N: integer;
begin
  Randomize;
  S := '';
  for i := 1 to Longitud do begin
    N := Random(Length(Chars)) + 1;
    S := S + Chars[N];
  end;
  Result := S;
end;

begin
  //Calculo de costos de materiales - Martin Samuel Esteban Diaz;
  {$REGION 'ACCEDER A EXCEL'}
  NombreDelExcel := PGetTempDir + 'TEMP~' + PNombreAleatorio(3) + 'costosmateriales.xls';
  Try
    Excel := CreateOleObject('Excel.Application');
  Except
    On E: Exception do begin
      FreeAndNil(Excel);
      ShowMessage(E.Message);
      Exit;
    end;
  End;

  Excel.Visible := True;
  Excel.DisplayAlerts:= False;
  Libro := Excel.Workbooks.Add;
  Excel.WorkBooks[1].WorkSheets[1].Name := 'EXPLOSION GENERAL DE MATERIALES';


  try
    TmpName := '';
    imgAux := TImage.Create(nil);
    if TmpName='' then begin
      TempPath := ExtractFilePath(Application.Exename);
      TmpName:=TempPath +'imgtempSln1'+formatdatetime('dddddd hhnnss',now)+'.jpg';
      fs := Connection.contrato.CreateBlobStream(Connection.contrato.FieldByName('bImagen'), bmRead);
      If fs.Size > 1 Then Begin
        try
          Pic:=TJpegImage.Create;
          try
            Pic.LoadFromStream(fs);
            imgAux.Picture.Graphic := Pic;
          finally
            Pic.Free;
          end;
        finally
          fs.Free;
        End;
        imgAux.Picture.SaveToFile(TmpName);
      End;
    end;
  Finally
    imgAux.Free;
  End;
  Excel.ActiveSheet.Shapes.AddPicture(TmpName, True, True, 10, 2, 100, 47);
  {$ENDREGION}

  {$REGION 'CONSULTA DATOS'}
  query1 := TZQuery.Create(nil);
  query1.Connection := connection.zConnection;

  zqAnexo := TZQuery.Create(nil);
  zqAnexo.Connection := connection.zConnection;

  Excel.Columns['A:A'].ColumnWidth := 15;
  Excel.Columns['B:B'].ColumnWidth := 40;
  Excel.Columns['C:C'].ColumnWidth := 12;
  Excel.Columns['D:D'].ColumnWidth := 10;
  Excel.Columns['E:E'].ColumnWidth := 15;
  Excel.Columns['F:F'].ColumnWidth := 15;

  Excel.Range['B2:D3'].Select;
  DarFormato(True, 'centro', True, False, 20);
  Excel.Selection.Value := 'EXPLOSION GENERAL DE HERRAMIENTAS';
  Excel.Selection.HorizontalAlignment := xlCenter;
  Excel.Selection.Font.Size := 12;
  Excel.Selection.Font.Name := 'Calibri';

  Excel.Range['A5:F' + IntToStr(iFila + 5)].Select;
  DarFormato(False, 'izq', False, True, 10);
  Excel.Selection.Font.Size := 10;

  Excel.Range['A5:F5'].Select;
  Excel.Selection.Font.Color := 2;
  Excel.Selection.Font.Bold := True;
  Excel.Selection.Interior.ColorIndex := 46;

  Excel.Range['A5:A5'].Select;
  Excel.Selection.Value := 'ID MATERIAL';

  Excel.Range['B5:B5'].Select;
  Excel.Selection.Value := 'DESCRIPCION';

  Excel.Range['C5:C5'].Select;
  Excel.Selection.Value := 'MEDIDA';

  Excel.Range['D5:D5'].Select;
  Excel.Selection.Value := 'CANTIDAD';

  Excel.Range['E5:E5'].Select;
  Excel.Selection.Value := 'PU.';

  Excel.Range['F5:F5'].Select;
  Excel.Selection.Value := 'TOTAL:';

  //Consultamos las actividades del anexo C
  zqAnexo.Active := False;
  zqAnexo.SQL.Clear;
  zqAnexo.SQL.Add('select sWbs, sNumeroActividad, dCantidadAnexo from actividadesxanexo where sContrato =:Contrato and sIdConvenio =:Convenio and sTipoActividad = "Actividad" order by iItemOrden ');
  zqAnexo.Params.ParamByName('contrato').DataType := ftString;
  zqAnexo.Params.ParamByName('contrato').Value    := global_contrato;
  zqAnexo.Params.ParamByName('convenio').DataType := ftString;
  zqAnexo.Params.ParamByName('convenio').Value    := global_convenio;
  zqAnexo.Open;

  iFila := 6;
  while not zqAnexo.Eof do
  begin
      //Consultamos el recurso de material de acuerdo a la partida..
      query1.Active := False;
      query1.SQL.Clear;
      query1.SQL.Add('select i.sIdInsumo, i.mDescripcion, i.sMedida, sum(r.dCantidad)as cantidad, '+
                    'r.dCostoTotalMN, r.dCostoTotalDLL from recursosanexosnuevos r '+
                    'inner join insumos i on(i.sContrato = r.sContrato and r.sIdInsumo = i.sIdInsumo) '+
                    'where r.sContrato = :contrato and r.sNumeroActividad = :actividad and r.sWbs = :Wbs group by r.sIdInsumo');
      query1.Params.ParamByName('contrato').DataType  := ftString;
      query1.Params.ParamByName('contrato').Value     := global_contrato;
      query1.Params.ParamByName('actividad').DataType := ftString;
      query1.Params.ParamByName('actividad').Value    := zqAnexo.FieldValues['sNumeroActividad'];
      query1.Params.ParamByName('Wbs').DataType       := ftString;
      query1.Params.ParamByName('Wbs').Value          := zqAnexo.FieldValues['sWbs'];
      query1.Open;

      if query1.RecordCount > 0 then
      begin
        while not query1.Eof do begin        
          //Inicia la impresion de los datos
          Excel.Range['A' + IntToStr(iFila) + ':A' + IntToStr(iFila)].Select;
          Excel.Selection.Value := Chr(39) + query1.FieldByName('sIdInsumo').AsString;
          Excel.Selection.NumberFormat := '';
          Excel.Selection.HorizontalAlignment := xlJustify;
          EstablecerContornos;

          Excel.Range['B' + IntToStr(iFila) + ':B' + IntToStr(iFila)].Select;
          Excel.Selection.Value := query1.FieldByName('mDescripcion').AsString;
          Excel.Selection.HorizontalAlignment := xlJustify;
          Excel.Selection.WrapText := True;
          EstablecerContornos;

          Excel.Range['C' + IntToStr(iFila) + ':C' + IntToStr(iFila)].Select;
          Excel.Selection.Value := query1.FieldByName('sMedida').AsString;
          EstablecerContornos;

          Excel.Range['D' + IntToStr(iFila) + ':D' + IntToStr(iFila)].Select;
          Excel.Selection.Value := zqAnexo.FieldByName('dCantidadAnexo').AsFloat;
          Excel.Selection.NumberFormat := '#0.0000';
          EstablecerContornos;

          Excel.Range['E' + IntToStr(iFila) + ':E' + IntToStr(iFila)].Select;
          Excel.Selection.Value := query1.FieldByName('dCostoTotalMN').AsFloat;
          Excel.Selection.NumberFormat := '$' + '#,##0.00';
          EstablecerContornos;

          Excel.Range['F' + IntToStr(iFila) + ':F' + IntToStr(iFila)].Select;
          Excel.Selection.Formula := '=D' + IntToStr(iFila) + '* E' + IntToStr(iFila);
          Excel.Selection.NumberFormat := '#,##0.00';
          EstablecerContornos;

          inc(iFila);
          query1.Next;
        end;
      end;
      zqAnexo.Next;
  end;

  Excel.Range['E' + IntToStr(iFila) + ':E' + IntToStr(iFila)].Select;
  Excel.Selection.Value := 'TOTAL:';
  Excel.Selection.Font.Size := 10;
  EstablecerContornos;

  Excel.Range['F' + IntToStr(iFila) + ':F' + IntToStr(iFila)].Select;
  Excel.Selection.Formula := '=SUM(F6:F' + IntToStr(iFila - 1);
  Excel.Selection.NumberFormat := '$' + '#,##0.00';
  Excel.Selection.Font.Size := 10;
  EstablecerContornos;

  query1.Destroy;
  zqAnexo.Destroy;
end;


procedure TfrmActividadesAnexo2.distribucion(tipo: string);
var
  qrBusca : TZReadOnlyQuery;

  fecha, inicio, termino : TDate;
  contador, a, b, intervalo : Integer;

  //Necesarios para insertar
  dCantidad, cantidad, dRendimiento, dCostoTotal : Double;
  wbs : string;
  id : string;
  paquete : string;

  //Datos a consultar
  idBuscar, tablaRecursosNuevo, tablaRecurso : string;
  continuar : Boolean;
  sJoin : string;
  ordenar : string;

  //Variables para el archivo .sql que genera el proceso.
  archivo : TextFile;
  eliminar : string;
  ruta : string;

  registros, dias : integer;
  fin : Boolean;
begin
  continuar := False;
  if tipo = 'Personal' then
  begin
    idBuscar           := 'sIdPersonal';
    tablaRecursosNuevo := 'recursospersonalnuevos';
    tablaRecurso       := 'personal';
    sJoin              := 'left ';
    ordenar            := 'order by r.sNumeroActividad, r.sNumeroPaquete, r.fila';
    continuar          := True;
  end
  else if tipo = 'Equipo' then
  begin
    idBuscar           := 'sIdEquipo';
    tablaRecursosNuevo := 'recursosequiposnuevos';
    tablaRecurso       := 'equipos';
    sJoin              := 'left ';
    ordenar            := 'order by r.sNumeroActividad';
    continuar          := True;
  end
  else if tipo = 'Material' then
  begin
    idBuscar           := 'sIdInsumo';
    tablaRecursosNuevo := 'recursosanexosnuevos';
    tablaRecurso       := 'insumos';
    sJoin              := 'inner ';
    ordenar            := 'order by r.'+ idBuscar +', r.sNumeroActividad';
    continuar          := True;
  end;

  connection.QryBusca.Active := False;
  connection.QryBusca.sql.Clear;
  connection.QryBusca.sql.Add('select * from distribucion_recursos_anexoc where sContrato = :contrato and sIdConvenio = :convenio and eTipoRecurso = :tipo');
  connection.QryBusca.ParamByName('contrato').AsString := global_contrato;
  connection.qrybusca.ParamByName('convenio').AsString := global_convenio;
  connection.qrybusca.ParamByName('tipo').AsString := tipo;
  connection.QryBusca.Open;

  if connection.QryBusca.RecordCount > 0 then
  begin
    if MessageDlg('Ya existe una distribucion del contrato: ' + global_contrato + 'y convenio: ' + global_convenio + ', se eliminara la distribucione existente,  �desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      continuar := True;
    end
    else
    begin
      continuar := False;
      MessageDlg('Proceso cancelado por el usuario', mtWarning, [mbOK], 0);
    end;
  end;

  if continuar then
  begin
    qrBusca := TZReadOnlyQuery.Create(nil);
    qrBusca.Connection := connection.zConnection;
    qrBusca.Active := False;
    qrBusca.SQL.Clear;
    qrBusca.SQL.Add('SELECT '+
                    'r.sContrato, '+
                    'a.sWbs, '+
                    'r.sNumeroActividad, '+
                    'r.'+ idBuscar + ', '+
                    'r.dCantidad, '+
                    'a.dCantidadAnexo, '+
                    'a.dFechaInicio, '+
                    'a.dFechaFinal, ' +
                    'r.dCostoTotalMN, '+
                    'r.dCostoMN, '+
                    'a.dCantidadAnexo');

    if tipo = 'Personal' then
      qrBusca.SQL.Add(', r.sNumeroPaquete ');
    if (tipo = 'Personal') or (tipo = 'Equipo') then
      qrBusca.SQL.Add(', r.dRendimiento ');

    qrBusca.SQL.Add(', r.Fila ');
    

    qrBusca.SQL.Add('FROM '+ tablaRecursosNuevo +' r '+
                  'INNER JOIN actividadesxanexo a ON ( '+
                    'a.sContrato = r.sContrato '+
                    'AND a.sWbs = r.sWbs '+
                    'AND a.sIdConvenio = :convenio '+
                    'AND a.sTipoActividad = "Actividad") '+
                  sJoin + 'JOIN '+ tablaRecurso +' p ON ( '+
                    'p.sContrato = r.sContrato '+
                    'AND p.' + idBuscar +' = r.'+ idBuscar +') '+
                  'WHERE	a.sContrato = :contrato ' + ordenar);

    qrBusca.ParamByName('contrato').AsString := global_contrato;
    qrBusca.ParamByName('convenio').AsString := global_convenio;
    qrBusca.Open;

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;
    connection.zCommand.SQL.Add('delete from distribucion_recursos_anexoc '+
                                'where sContrato = :contrato '+
                                'and sIdConvenio = :convenio '+
                                'and eTipoRecurso = "'+ tipo +'"');
    connection.zCommand.ParamByName('contrato').AsString := global_contrato;
    connection.zCommand.ParamByName('convenio').AsString := global_convenio;
    connection.zCommand.ExecSQL;

    connection.zCommand.Active := False;
    connection.zCommand.SQL.Clear;

    eliminar := ExtractFilePath(Application.ExeName) + 'distribucion.sql';
    if FileExists(eliminar) then
       DeleteFile(eliminar);

    AssignFile(archivo, ExtractFilePath(Application.ExeName) + 'distribucion.sql');
    Rewrite(archivo);

    if qrBusca.RecordCount > 0 then
    begin
      registros := 1;
      contador := 0;
      qrBusca.First;
      fin := False;
      Writeln(archivo, 'INSERT INTO distribucion_recursos_anexoc (sContrato, sIdConvenio, sWbs, sIdRecurso, dCantidad, dCostoMN, dRendimiento, dIdFecha, eTipoRecurso, sNumeroPaquete) VALUES ');
      while not qrBusca.Eof do
      begin
        if registros = qrBusca.RecordCount then
        begin
          fin := True;
        end;

        inicio    := qrBusca.FieldByName('dFechaInicio').AsDateTime;
        termino   := qrBusca.FieldByName('dFechaFinal').AsDateTime;
        fecha     := inicio;
        intervalo := DaysBetween(inicio, termino) + 1;

        if (qrBusca.FieldByName('fila').AsInteger = 1) and (tipo <> 'Material') or (tipo = 'Equipo') then
        begin
            dRendimiento := 1;
           if qrBusca.FieldByName('dRendimiento').AsFloat > 0 then
              dRendimiento := qrBusca.FieldByName('dRendimiento').AsFloat;
        end;

        {Calculo (Cantida de Personal * Cantidad Anexo / Rendimiento) / Intervalos de dias.}
        dCantidad   := ((dRendimiento * qrBusca.FieldByName('dCantidadAnexo').AsFloat) * qrBusca.FieldByName('dCantidad').AsFloat) / intervalo ;
        //dCantidad   := (qrBusca.FieldByName('dCantidad').AsFloat / intervalo)  * qrBusca.FieldByName('dCantidadAnexo').AsFloat ;

        if tipo = 'Equipo' then
          if qrBusca.FieldByName('dRendimiento').AsFloat > 0 then
            dRendimiento := qrBusca.FieldByName('dRendimiento').AsFloat;

        if tipo <> 'Material' then
          dCostoTotal := ((dRendimiento * qrBusca.FieldByName('dCantidadAnexo').AsFloat) * qrBusca.FieldByName('dCostoTotalMN').AsFloat) / intervalo;

        if tipo = 'Material' then
        begin
          dCantidad := (qrBusca.FieldByName('dCantidad').AsFloat / intervalo);
          dCostoTotal := (qrBusca.FieldByName('dCantidad').AsFloat / intervalo) * qrBusca.FieldByName('dCantidadAnexo').AsFloat;
        end;

        dCostoTotal := RoundTo(dCostoTotal, -7);

        b := 1;
        {Validamos que no sea un paquete..}
        while b <= intervalo do
        begin
          if ((tipo = 'Personal') and (qrBusca.FieldByName('fila').AsInteger = 2)) or (tipo = 'Equipo') or (tipo = 'Material') then
          begin
            wbs := qrBusca.FieldByName('sWbs').AsString;
            id := qrBusca.FieldByName(idBuscar).AsString;

            if tipo = 'Personal' then
               paquete := qrBusca.FieldByName('sNumeroPaquete').AsString
            else
               paquete := ' ';

            if (b = intervalo) and (fin <> False) then
               Writeln(archivo, '("'+ global_contrato +'", "'+ global_convenio+'", "'+ wbs + '", "'+ id +'", '+ FloatToStr(dCantidad) +', ' + FloatToStr(dCostoTotal) + ', ' + FloatToStr(dRendimiento) + ', "'+ formatoFecha(fecha) + '", "' + tipo +'", "' + paquete + '")' + Char(59))
            else
              Writeln(archivo, '("'+ global_contrato +'", "'+ global_convenio+'", "'+ wbs + '", "'+ id +'", '+ FloatToStr(dCantidad) +', ' + FloatToStr(dCostoTotal) +', ' + FloatToStr(dRendimiento) + ', "'+ formatoFecha(fecha) + '", "' + tipo +'", "' + paquete + '"), ');
          end;
          fecha := IncDay(fecha);
          inc(b);
        end;
        Inc(registros);
        qrBusca.Next;
      end;

      CloseFile(archivo);
      connection.zCommand.Active := False;
      connection.zCommand.SQL.Clear;
      ruta := ExtractFilePath(Application.ExeName) + 'distribucion.sql';
      connection.zCommand.SQL.LoadFromFile(ruta);
      connection.zCommand.ExecSQL;

    end;
    qrBusca.Destroy;
    messageDLG('Proceso Termina con �xito!', mtInformation, [mbOk], 0);
  end;

  eliminar := ExtractFilePath(Application.ExeName) + 'distribucion.sql';
      if FileExists(eliminar) then
         DeleteFile(eliminar);
  
end;

function TfrmActividadesAnexo2.formatoFecha(fecha: TDate) : string;
var
  anio, mes, dia : Word;
  resultado : string;
begin
  DecodeDate(fecha, anio, mes, dia);
  resultado := IntToStr(anio) + '/' + IntToStr(mes) + '/' + IntToStr(dia);
  Result := resultado;
end;

end.
