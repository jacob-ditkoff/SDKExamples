{**********************************************
	This file was automatically generated 2014:02:28T11:14:00
	
	DO NOT EDIT THIS FILE -- Use Dialog Builder Tools to edit this file.
***********************************************}


PROCEDURE SampleDlg1;
CONST
    {Alignment constants}
    kRight                = 1;
    kBottom               = 2;
    kLeft                 = 3;
    kColumn               = 4;
    kResize               = 0;
    kShift                = 1;

    { default and cancel button IDs}
    kOK                   = 1;
    kCancel               = 2;

    { control IDs}
    kEditFieldsGrp        = 5;
    kIntegerEdit          = 6;
    kRealEdit             = 7;
    kTextEdit             = 8;
    kSeparator            = 9;
    kCenStaticText        = 10;
    kCommonCtrlGrp        = 11;
    kCheckBox             = 12;
    kThreeStateCheckBox   = 13;
    kRadioGrp             = 14;
    kStaticText           = 15;
    kRadio1               = 16;
    kRadio2               = 17;
    kRadio3               = 18;
    kGetDataButton        = 19;

VAR
    dialog            :INTEGER;
    cnt               :INTEGER;

FUNCTION GetStr(ndx :STRING) :STRING;
BEGIN
    GetVWRString(GetStr, 'VWUI Dialogs Sample/Strings/SampleDlg1.vwstrings', ndx);
END;

BEGIN
    dialog := CreateResizableLayout(GetStr('dialog_title'), TRUE, GetStr('ok_button'), GetStr('cancel_button'), TRUE, FALSE );

    {create controls}
    CreateStaticText( dialog, kStaticText, GetStr('kStaticText'), 25 );
    CreateSeparator( dialog, kSeparator, 16 );;
    CreateCenteredStaticText( dialog, kCenStaticText, GetStr('kCenStaticText'), 16 );
    CreateGroupBox( dialog, kEditFieldsGrp, GetStr('kEditFieldsGrp'), TRUE );
    CreateEditInteger( dialog, kIntegerEdit, 3, 25 );
    CreateEditReal( dialog, kRealEdit, 3, 0.1, 25 );
    CreateEditText( dialog, kTextEdit, GetStr('kTextEdit'), 25 );
    CreateGroupBox( dialog, kCommonCtrlGrp, GetStr('kCommonCtrlGrp'), TRUE );
    CreateCheckBox( dialog, kCheckBox, GetStr('kCheckBox') );
    CreateThreeStateCheckBox( dialog, kThreeStateCheckBox, GetStr('kThreeStateCheckBox') );
    CreateGroupBox( dialog, kRadioGrp, GetStr('kRadioGrp'), FALSE );
    CreateRadioButton( dialog, kRadio1, GetStr('kRadio1') );
    CreateRadioButton( dialog, kRadio2, GetStr('kRadio2') );
    CreateRadioButton( dialog, kRadio3, GetStr('kRadio3') );
    CreatePushButton( dialog, kGetDataButton, GetStr('kGetDataButton') );

    {set relations}
    SetFirstLayoutItem( dialog, kStaticText );
    SetBelowItem( dialog, kStaticText, kSeparator, 0, 0 );
    SetBelowItem( dialog, kSeparator, kCenStaticText, 0, 0 );
    SetBelowItem( dialog, kCenStaticText, kEditFieldsGrp, 0, 0 );
    SetFirstGroupItem( dialog, kEditFieldsGrp, kIntegerEdit );
    SetBelowItem( dialog, kEditFieldsGrp, kCommonCtrlGrp, 0, 0 );
    SetBelowItem( dialog, kIntegerEdit, kRealEdit, 0, 0 );
    SetBelowItem( dialog, kRealEdit, kTextEdit, 0, 0 );
    SetFirstGroupItem( dialog, kCommonCtrlGrp, kCheckBox );
    SetBelowItem( dialog, kCommonCtrlGrp, kGetDataButton, 0, 0 );
    SetBelowItem( dialog, kCheckBox, kThreeStateCheckBox, 0, 0 );
    SetBelowItem( dialog, kThreeStateCheckBox, kRadioGrp, 0, 0 );
    SetFirstGroupItem( dialog, kRadioGrp, kRadio1 );
    SetBelowItem( dialog, kRadio1, kRadio2, 0, 0 );
    SetBelowItem( dialog, kRadio2, kRadio3, 0, 0 );

    {set alignments}
    AlignItemEdge( dialog, kEditFieldsGrp, kRight, 1, kResize );
    AlignItemEdge( dialog, kSeparator, kRight, 1, kResize );
    AlignItemEdge( dialog, kCenStaticText, kRight, 1, kResize );
    AlignItemEdge( dialog, kCommonCtrlGrp, kRight, 1, kResize );

    {set bindings}
    SetEdgeBinding        ( dialog, kEditFieldsGrp, TRUE, TRUE, FALSE, FALSE );
    SetEdgeBinding        ( dialog, kIntegerEdit, TRUE, TRUE, FALSE, FALSE );
    SetEdgeBinding        ( dialog, kRealEdit, TRUE, TRUE, FALSE, FALSE );
    SetEdgeBinding        ( dialog, kTextEdit, TRUE, TRUE, FALSE, FALSE );
    SetEdgeBinding        ( dialog, kSeparator, TRUE, TRUE, FALSE, FALSE );
    SetEdgeBinding        ( dialog, kCenStaticText, TRUE, TRUE, FALSE, FALSE );
    SetEdgeBinding        ( dialog, kCommonCtrlGrp, TRUE, TRUE, FALSE, FALSE );
    SetEdgeBinding        ( dialog, kStaticText, TRUE, TRUE, FALSE, FALSE );

    {set help strings}
    SetHelpText(dialog, kOK, GetStr('ok_button_help'));
    SetHelpText(dialog, kCancel, GetStr('cancel_button_help'));
    SetHelpText(dialog, kEditFieldsGrp, GetStr('kEditFieldsGrp_help'));
    SetHelpText(dialog, kIntegerEdit, GetStr('kIntegerEdit_help'));
    SetHelpText(dialog, kRealEdit, GetStr('kRealEdit_help'));
    SetHelpText(dialog, kTextEdit, GetStr('kTextEdit_help'));
    SetHelpText(dialog, kSeparator, GetStr('kSeparator_help'));
    SetHelpText(dialog, kCenStaticText, GetStr('kCenStaticText_help'));
    SetHelpText(dialog, kCommonCtrlGrp, GetStr('kCommonCtrlGrp_help'));
    SetHelpText(dialog, kCheckBox, GetStr('kCheckBox_help'));
    SetHelpText(dialog, kThreeStateCheckBox, GetStr('kThreeStateCheckBox_help'));
    SetHelpText(dialog, kRadioGrp, GetStr('kRadioGrp_help'));
    SetHelpText(dialog, kStaticText, GetStr('kStaticText_help'));
    SetHelpText(dialog, kRadio1, GetStr('kRadio1_help'));
    SetHelpText(dialog, kRadio2, GetStr('kRadio2_help'));
    SetHelpText(dialog, kRadio3, GetStr('kRadio3_help'));
    SetHelpText(dialog, kGetDataButton, GetStr('kGetDataButton_help'));
    

    { uncomment to test the script
    IF RunLayoutDialog( dialog, NIL ) = 1 then BEGIN
    END;}

END;
RUN( SampleDlg1 );

{XML defintion of the layout}
{<BEGIN_XML>
<?xml version="1.0" encoding="UTF-8" standalone="no" ?>
<DialogBuilder>

  <LayoutData>
    <Name>SampleDlg1</Name>
    <Title>Sample Dialog 1</Title>
    <OKText>OK</OKText>
    <OKHelpText>Accepts the dialog data.</OKHelpText>
    <CancelText>Cancel</CancelText>
    <CancelHelpText>Cancels the dialog data.</CancelHelpText>
    <ResizableHeight>FALSE</ResizableHeight>
    <StringsStartID>12000</StringsStartID>
    <HelpStrStartID>12001</HelpStrStartID>
    <TablesAddToDlgRes>TRUE</TablesAddToDlgRes>
    <ResourceRoot>VWUI Dialogs Sample</ResourceRoot>
  </LayoutData>

  <Controls>
    <Control name="DialogBuilderControl" x="-60" y="66">
      <Parameter Name="__UUID">%LB5B826828-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="type">kStaticTextGroup</Parameter>
      <Parameter Name="id">5</Parameter>
      <Parameter Name="constName">EditFieldsGrp</Parameter>
      <Parameter Name="label">Edit Fields</Parameter>
      <Parameter Name="value">0</Parameter>
      <Parameter Name="alignGroup">1</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">69mm</Parameter>
      <Parameter Name="ControlPoint00Y">-20mm</Parameter>
      <Parameter Name="ControlPoint01X">38mm</Parameter>
      <Parameter Name="ControlPoint01Y">-63mm</Parameter>
      <Parameter Name="ControlPoint02X">67mm</Parameter>
      <Parameter Name="ControlPoint02Y">-38mm</Parameter>
      <Parameter Name="__BottomUUID">%LB42D7B25E-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="__savedHandleRightX">69mm</Parameter>
      <Parameter Name="__savedHandleRightY">-20mm</Parameter>
      <Parameter Name="__savedHandleBottomX">38mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-63mm</Parameter>
      <Parameter Name="__fVisControlWidth">69</Parameter>
      <Parameter Name="__fVisControlHeight">40.93416667</Parameter>
    </Control>
    <Control name="DialogBuilderControl" x="-51" y="59">
      <Parameter Name="__UUID">%LB5B826829-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="type">kEditIntegerBox</Parameter>
      <Parameter Name="id">6</Parameter>
      <Parameter Name="constName">IntegerEdit</Parameter>
      <Parameter Name="value">3</Parameter>
      <Parameter Name="helpText">This is integer number edit box.</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="ctrlWidth">25</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">22mm</Parameter>
      <Parameter Name="ControlPoint00Y">-1mm</Parameter>
      <Parameter Name="ControlPoint01X">13mm</Parameter>
      <Parameter Name="ControlPoint01Y">-9mm</Parameter>
      <Parameter Name="ControlPoint02X">0mm</Parameter>
      <Parameter Name="ControlPoint02Y">0mm</Parameter>
      <Parameter Name="__BottomUUID">%LB7E632EC2-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="__savedHandleRightX">22mm</Parameter>
      <Parameter Name="__savedHandleRightY">-1mm</Parameter>
      <Parameter Name="__savedHandleBottomX">13mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-9mm</Parameter>
      <Parameter Name="__fVisControlWidth">22</Parameter>
      <Parameter Name="__fVisControlHeight">3</Parameter>
    </Control>
    <Control name="DialogBuilderControl" x="-48" y="50">
      <Parameter Name="__UUID">%LB7E632EC2-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="type">kEditRealBox</Parameter>
      <Parameter Name="id">7</Parameter>
      <Parameter Name="constName">RealEdit</Parameter>
      <Parameter Name="value">0.1</Parameter>
      <Parameter Name="helpText">This is real dimension number edit box.</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="ctrlWidth">25</Parameter>
      <Parameter Name="realEditType">kEditRealType_Dimension</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">19mm</Parameter>
      <Parameter Name="ControlPoint00Y">-1mm</Parameter>
      <Parameter Name="ControlPoint01X">8mm</Parameter>
      <Parameter Name="ControlPoint01Y">-8mm</Parameter>
      <Parameter Name="ControlPoint02X">0mm</Parameter>
      <Parameter Name="ControlPoint02Y">0mm</Parameter>
      <Parameter Name="__BottomUUID">%LB7E632EC3-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="__savedHandleRightX">19mm</Parameter>
      <Parameter Name="__savedHandleRightY">-1mm</Parameter>
      <Parameter Name="__savedHandleBottomX">8mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-8mm</Parameter>
      <Parameter Name="__fVisControlWidth">19</Parameter>
      <Parameter Name="__fVisControlHeight">3</Parameter>
    </Control>
    <Control name="DialogBuilderControl" x="-49" y="42">
      <Parameter Name="__UUID">%LB7E632EC3-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="type">kEditTextBox</Parameter>
      <Parameter Name="id">8</Parameter>
      <Parameter Name="constName">TextEdit</Parameter>
      <Parameter Name="label">edit text</Parameter>
      <Parameter Name="value">edit text</Parameter>
      <Parameter Name="helpText">This is text edit box. Note that this is single line text edit field.</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="ctrlWidth">25</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">18mm</Parameter>
      <Parameter Name="ControlPoint00Y">-1mm</Parameter>
      <Parameter Name="ControlPoint01X">9mm</Parameter>
      <Parameter Name="ControlPoint01Y">-3mm</Parameter>
      <Parameter Name="ControlPoint02X">0mm</Parameter>
      <Parameter Name="ControlPoint02Y">0mm</Parameter>
      <Parameter Name="__savedHandleRightX">18mm</Parameter>
      <Parameter Name="__savedHandleRightY">-1mm</Parameter>
      <Parameter Name="__savedHandleBottomX">9mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-3mm</Parameter>
      <Parameter Name="__fVisControlWidth">18</Parameter>
      <Parameter Name="__fVisControlHeight">3</Parameter>
    </Control>
    <Control name="Dialog Builder Link" x="0" y="0">
      <Parameter Name="ParentObj">%LB5B826829-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="RelatedObj">%LB7E632EC2-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="ParentMode">1</Parameter>
    </Control>
    <Control name="Dialog Builder Link" x="0" y="0">
      <Parameter Name="ParentObj">%LB7E632EC2-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="RelatedObj">%LB7E632EC3-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="ParentMode">1</Parameter>
    </Control>
    <Control name="DialogBuilderControl" x="-59" y="87">
      <Parameter Name="__UUID">%LBB5701AD8-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="type">kSeparator</Parameter>
      <Parameter Name="id">9</Parameter>
      <Parameter Name="constName">Separator</Parameter>
      <Parameter Name="label">None</Parameter>
      <Parameter Name="helpText">This is separator line. It's size is aligned with the group boxes, and resizing is bounded to the dialog edge.</Parameter>
      <Parameter Name="alignGroup">1</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">15mm</Parameter>
      <Parameter Name="ControlPoint00Y">-1mm</Parameter>
      <Parameter Name="ControlPoint01X">16mm</Parameter>
      <Parameter Name="ControlPoint01Y">-9mm</Parameter>
      <Parameter Name="ControlPoint02X">0mm</Parameter>
      <Parameter Name="ControlPoint02Y">0mm</Parameter>
      <Parameter Name="__BottomUUID">%LBBF32BB48-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="__savedHandleRightX">15mm</Parameter>
      <Parameter Name="__savedHandleRightY">-1mm</Parameter>
      <Parameter Name="__savedHandleBottomX">16mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-9mm</Parameter>
      <Parameter Name="__fVisControlWidth">15</Parameter>
      <Parameter Name="__fVisControlHeight">3</Parameter>
    </Control>
    <Control name="DialogBuilderControl" x="-57" y="78">
      <Parameter Name="__UUID">%LBBF32BB48-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="type">kCenteredStaticText</Parameter>
      <Parameter Name="id">10</Parameter>
      <Parameter Name="constName">CenStaticText</Parameter>
      <Parameter Name="label">Centered static text</Parameter>
      <Parameter Name="helpText">This is centered text line. It's size is aligned with the group boxes, and resizing is bounded to the dialog edge.</Parameter>
      <Parameter Name="alignGroup">1</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">27mm</Parameter>
      <Parameter Name="ControlPoint00Y">-1mm</Parameter>
      <Parameter Name="ControlPoint01X">32mm</Parameter>
      <Parameter Name="ControlPoint01Y">-12mm</Parameter>
      <Parameter Name="ControlPoint02X">0mm</Parameter>
      <Parameter Name="ControlPoint02Y">0mm</Parameter>
      <Parameter Name="__BottomUUID">%LB5B826828-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="__savedHandleRightX">27mm</Parameter>
      <Parameter Name="__savedHandleRightY">-1mm</Parameter>
      <Parameter Name="__savedHandleBottomX">32mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-12mm</Parameter>
      <Parameter Name="__fVisControlWidth">27</Parameter>
      <Parameter Name="__fVisControlHeight">3</Parameter>
    </Control>
    <Control name="Dialog Builder Link" x="0" y="0">
      <Parameter Name="ParentObj">%LBB5701AD8-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="RelatedObj">%LBBF32BB48-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="ParentMode">1</Parameter>
    </Control>
    <Control name="DialogBuilderControl" x="-60" y="3">
      <Parameter Name="__UUID">%LB42D7B25E-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="type">kStaticTextGroup</Parameter>
      <Parameter Name="id">11</Parameter>
      <Parameter Name="constName">CommonCtrlGrp</Parameter>
      <Parameter Name="label">Common Controls</Parameter>
      <Parameter Name="alignGroup">1</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">76mm</Parameter>
      <Parameter Name="ControlPoint00Y">-29mm</Parameter>
      <Parameter Name="ControlPoint01X">9mm</Parameter>
      <Parameter Name="ControlPoint01Y">-69mm</Parameter>
      <Parameter Name="ControlPoint02X">74mm</Parameter>
      <Parameter Name="ControlPoint02Y">-56mm</Parameter>
      <Parameter Name="__BottomUUID">%LBB8FAA66E-E051-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="__savedHandleRightX">76mm</Parameter>
      <Parameter Name="__savedHandleRightY">-29mm</Parameter>
      <Parameter Name="__savedHandleBottomX">9mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-69mm</Parameter>
      <Parameter Name="__fVisControlWidth">76.83416667</Parameter>
      <Parameter Name="__fVisControlHeight">58</Parameter>
    </Control>
    <Control name="DialogBuilderControl" x="-54" y="-7">
      <Parameter Name="__UUID">%LB42D7B25F-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="type">kCheckBox</Parameter>
      <Parameter Name="id">12</Parameter>
      <Parameter Name="constName">CheckBox</Parameter>
      <Parameter Name="label">Check Box</Parameter>
      <Parameter Name="helpText">This is two state check box.</Parameter>
      <Parameter Name="bindLeft">kNone</Parameter>
      <Parameter Name="bindRight">kNone</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">20mm</Parameter>
      <Parameter Name="ControlPoint00Y">-1mm</Parameter>
      <Parameter Name="ControlPoint01X">19mm</Parameter>
      <Parameter Name="ControlPoint01Y">-9mm</Parameter>
      <Parameter Name="ControlPoint02X">0mm</Parameter>
      <Parameter Name="ControlPoint02Y">0mm</Parameter>
      <Parameter Name="__BottomUUID">%LB4D9BD0C6-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="__savedHandleRightX">20mm</Parameter>
      <Parameter Name="__savedHandleRightY">-1mm</Parameter>
      <Parameter Name="__savedHandleBottomX">19mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-9mm</Parameter>
      <Parameter Name="__fVisControlWidth">20</Parameter>
      <Parameter Name="__fVisControlHeight">3</Parameter>
    </Control>
    <Control name="DialogBuilderControl" x="-54" y="-16">
      <Parameter Name="__UUID">%LB4D9BD0C6-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="type">kThreeStateCheckBox</Parameter>
      <Parameter Name="id">13</Parameter>
      <Parameter Name="constName">ThreeStateCheckBox</Parameter>
      <Parameter Name="label">Three State check box</Parameter>
      <Parameter Name="helpText">This is three state check box.</Parameter>
      <Parameter Name="bindLeft">kNone</Parameter>
      <Parameter Name="bindRight">kNone</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">37mm</Parameter>
      <Parameter Name="ControlPoint00Y">-1mm</Parameter>
      <Parameter Name="ControlPoint01X">31mm</Parameter>
      <Parameter Name="ControlPoint01Y">-8mm</Parameter>
      <Parameter Name="ControlPoint02X">0mm</Parameter>
      <Parameter Name="ControlPoint02Y">0mm</Parameter>
      <Parameter Name="__BottomUUID">%LB4D9BD0C7-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="__savedHandleRightX">37mm</Parameter>
      <Parameter Name="__savedHandleRightY">-1mm</Parameter>
      <Parameter Name="__savedHandleBottomX">31mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-8mm</Parameter>
      <Parameter Name="__fVisControlWidth">37</Parameter>
      <Parameter Name="__fVisControlHeight">3</Parameter>
    </Control>
    <Control name="DialogBuilderControl" x="-54" y="-24">
      <Parameter Name="__UUID">%LB4D9BD0C7-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="type">kStaticTextGroup</Parameter>
      <Parameter Name="id">14</Parameter>
      <Parameter Name="constName">RadioGrp</Parameter>
      <Parameter Name="bindLeft">kNone</Parameter>
      <Parameter Name="bindRight">kNone</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="ControlPoint00X">62mm</Parameter>
      <Parameter Name="ControlPoint00Y">-14mm</Parameter>
      <Parameter Name="ControlPoint01X">31mm</Parameter>
      <Parameter Name="ControlPoint01Y">-28mm</Parameter>
      <Parameter Name="ControlPoint02X">60mm</Parameter>
      <Parameter Name="ControlPoint02Y">-26mm</Parameter>
      <Parameter Name="__savedHandleRightX">62mm</Parameter>
      <Parameter Name="__savedHandleRightY">-14mm</Parameter>
      <Parameter Name="__savedHandleBottomX">31mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-28mm</Parameter>
      <Parameter Name="__fVisControlWidth">62</Parameter>
      <Parameter Name="__fVisControlHeight">28</Parameter>
    </Control>
    <Control name="Dialog Builder Link" x="0" y="0">
      <Parameter Name="ParentObj">%LB42D7B25F-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="RelatedObj">%LB4D9BD0C6-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="ParentMode">1</Parameter>
    </Control>
    <Control name="Dialog Builder Link" x="0" y="0">
      <Parameter Name="ParentObj">%LB4D9BD0C6-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="RelatedObj">%LB4D9BD0C7-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="ParentMode">1</Parameter>
    </Control>
    <Control name="DialogBuilderControl" x="-58" y="94">
      <Parameter Name="__UUID">%LBB8D4F250-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="id">15</Parameter>
      <Parameter Name="constName">StaticText</Parameter>
      <Parameter Name="label">Static Text</Parameter>
      <Parameter Name="helpText">This is common static text.</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="sizeToText">False</Parameter>
      <Parameter Name="ctrlWidth">25</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">14mm</Parameter>
      <Parameter Name="ControlPoint00Y">-1mm</Parameter>
      <Parameter Name="ControlPoint01X">7mm</Parameter>
      <Parameter Name="ControlPoint01Y">-7mm</Parameter>
      <Parameter Name="ControlPoint02X">0mm</Parameter>
      <Parameter Name="ControlPoint02Y">0mm</Parameter>
      <Parameter Name="__BottomUUID">%LBB5701AD8-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="__savedHandleRightX">14mm</Parameter>
      <Parameter Name="__savedHandleRightY">-1mm</Parameter>
      <Parameter Name="__savedHandleBottomX">7mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-7mm</Parameter>
      <Parameter Name="__fVisControlWidth">14</Parameter>
      <Parameter Name="__fVisControlHeight">3</Parameter>
    </Control>
    <Control name="Dialog Builder Link" x="0" y="0">
      <Parameter Name="ParentObj">%LBB8D4F250-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="RelatedObj">%LBB5701AD8-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="ParentMode">1</Parameter>
    </Control>
    <Control name="Dialog Builder Link" x="0" y="0">
      <Parameter Name="ParentObj">%LBBF32BB48-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="RelatedObj">%LB5B826828-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="ParentMode">1</Parameter>
    </Control>
    <Control name="Dialog Builder Link" x="0" y="0">
      <Parameter Name="ParentObj">%LB5B826828-E038-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="RelatedObj">%LB42D7B25E-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="ParentMode">1</Parameter>
    </Control>
    <Control name="DialogBuilderControl" x="-47" y="-29">
      <Parameter Name="__UUID">%LBD07F29A2-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="type">kRadioButton</Parameter>
      <Parameter Name="id">16</Parameter>
      <Parameter Name="constName">Radio1</Parameter>
      <Parameter Name="label">radio 1</Parameter>
      <Parameter Name="helpText">This is first radio button in this group.</Parameter>
      <Parameter Name="bindLeft">kNone</Parameter>
      <Parameter Name="bindRight">kNone</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">15mm</Parameter>
      <Parameter Name="ControlPoint00Y">-1mm</Parameter>
      <Parameter Name="ControlPoint01X">8mm</Parameter>
      <Parameter Name="ControlPoint01Y">-8mm</Parameter>
      <Parameter Name="ControlPoint02X">0mm</Parameter>
      <Parameter Name="ControlPoint02Y">0mm</Parameter>
      <Parameter Name="__BottomUUID">%LBD07F29A3-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="__savedHandleRightX">15mm</Parameter>
      <Parameter Name="__savedHandleRightY">-1mm</Parameter>
      <Parameter Name="__savedHandleBottomX">8mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-8mm</Parameter>
      <Parameter Name="__fVisControlWidth">15</Parameter>
      <Parameter Name="__fVisControlHeight">3</Parameter>
    </Control>
    <Control name="DialogBuilderControl" x="-47" y="-37">
      <Parameter Name="__UUID">%LBD07F29A3-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="type">kRadioButton</Parameter>
      <Parameter Name="id">17</Parameter>
      <Parameter Name="constName">Radio2</Parameter>
      <Parameter Name="label">radio 2</Parameter>
      <Parameter Name="helpText">This is second radio button in this group.</Parameter>
      <Parameter Name="bindLeft">kNone</Parameter>
      <Parameter Name="bindRight">kNone</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">15mm</Parameter>
      <Parameter Name="ControlPoint00Y">-1mm</Parameter>
      <Parameter Name="ControlPoint01X">9mm</Parameter>
      <Parameter Name="ControlPoint01Y">-8mm</Parameter>
      <Parameter Name="ControlPoint02X">0mm</Parameter>
      <Parameter Name="ControlPoint02Y">0mm</Parameter>
      <Parameter Name="__BottomUUID">%LBE1FCA9DE-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="__savedHandleRightX">15mm</Parameter>
      <Parameter Name="__savedHandleRightY">-1mm</Parameter>
      <Parameter Name="__savedHandleBottomX">9mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-8mm</Parameter>
      <Parameter Name="__fVisControlWidth">15</Parameter>
      <Parameter Name="__fVisControlHeight">3</Parameter>
    </Control>
    <Control name="DialogBuilderControl" x="-46" y="-45">
      <Parameter Name="__UUID">%LBE1FCA9DE-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="type">kRadioButton</Parameter>
      <Parameter Name="id">18</Parameter>
      <Parameter Name="constName">Radio3</Parameter>
      <Parameter Name="label">radio 3</Parameter>
      <Parameter Name="helpText">This is third radio button in this group.</Parameter>
      <Parameter Name="bindLeft">kNone</Parameter>
      <Parameter Name="bindRight">kNone</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">15mm</Parameter>
      <Parameter Name="ControlPoint00Y">-1mm</Parameter>
      <Parameter Name="ControlPoint01X">7mm</Parameter>
      <Parameter Name="ControlPoint01Y">-3mm</Parameter>
      <Parameter Name="ControlPoint02X">0mm</Parameter>
      <Parameter Name="ControlPoint02Y">0mm</Parameter>
      <Parameter Name="__savedHandleRightX">15mm</Parameter>
      <Parameter Name="__savedHandleRightY">-1mm</Parameter>
      <Parameter Name="__savedHandleBottomX">7mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-3mm</Parameter>
      <Parameter Name="__fVisControlWidth">15</Parameter>
      <Parameter Name="__fVisControlHeight">3</Parameter>
    </Control>
    <Control name="Dialog Builder Link" x="0" y="0">
      <Parameter Name="ParentObj">%LBD07F29A2-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="RelatedObj">%LBD07F29A3-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="ParentMode">1</Parameter>
    </Control>
    <Control name="Dialog Builder Link" x="0" y="0">
      <Parameter Name="ParentObj">%LBD07F29A3-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="RelatedObj">%LBE1FCA9DE-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="ParentMode">1</Parameter>
    </Control>
    <Control name="DialogBuilderControl" x="-58" y="-66">
      <Parameter Name="__UUID">%LBB8FAA66E-E051-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="type">kPushButton</Parameter>
      <Parameter Name="id">19</Parameter>
      <Parameter Name="constName">GetDataButton</Parameter>
      <Parameter Name="label">Get Data</Parameter>
      <Parameter Name="helpText">Show info box with dialog data.</Parameter>
      <Parameter Name="bindLeft">kNone</Parameter>
      <Parameter Name="bindRight">kNone</Parameter>
      <Parameter Name="bindTop">kNone</Parameter>
      <Parameter Name="bindBottom">kNone</Parameter>
      <Parameter Name="hasFrame">True</Parameter>
      <Parameter Name="ControlPoint00X">14mm</Parameter>
      <Parameter Name="ControlPoint00Y">-1mm</Parameter>
      <Parameter Name="ControlPoint01X">7mm</Parameter>
      <Parameter Name="ControlPoint01Y">-3mm</Parameter>
      <Parameter Name="ControlPoint02X">0mm</Parameter>
      <Parameter Name="ControlPoint02Y">0mm</Parameter>
      <Parameter Name="__savedHandleRightX">14mm</Parameter>
      <Parameter Name="__savedHandleRightY">-1mm</Parameter>
      <Parameter Name="__savedHandleBottomX">7mm</Parameter>
      <Parameter Name="__savedHandleBottomY">-3mm</Parameter>
      <Parameter Name="__fVisControlWidth">14</Parameter>
      <Parameter Name="__fVisControlHeight">3</Parameter>
    </Control>
    <Control name="Dialog Builder Link" x="0" y="0">
      <Parameter Name="ParentObj">%LB42D7B25E-E03A-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="RelatedObj">%LBB8FAA66E-E051-11DB-B912-00138FD51EA3%RB</Parameter>
      <Parameter Name="ParentMode">1</Parameter>
    </Control>
  </Controls>

</DialogBuilder>

<END_XML>}
