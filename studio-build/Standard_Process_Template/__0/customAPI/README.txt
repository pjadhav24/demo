The package "Standard_Process_Template.__0.customAPI" is reserved for
you to add your own custom classes and resources.  These resources will accompany the SPT when it 
is uploaded to Platform, and will be accessible to Computations/Custom Workflow Activities/etc.

Do not explicitly place java files in any other directories under studio-src, as they 
may be deleted by the Process Type editor.

Please note that there are a few reserved paths under customAPI which you can use
to "plug-in" to certain features:
	
Standard_Process_Template/__0/customAPI/handlers/UiFeatureListenerMapping.xml
	You may optionally provide an XML document adhering to the "UiFeatureListenerMaps"
	XSD which contains custom UiFeatureListenerMappings for pre- and post-processing
	of various web pages

Standard_Process_Template/__0/customAPI/reports/Reports.xml
	You may optionally provide an XML document adhering to the "ReportList" XSD which 
	contains custom SqlDef-based reports.
	
Standard_Retail_Process_Template/__0/customAPI/reports/CustomScheduledReportFilter.java
	You may optionally provide a class which implements com.transcendsys.platform.server.report.ScheduledReportFilter
	to filter reports from ScheduleReportResource.
	
Standard_Process_Template/__0/customAPI/web/CustomReqFieldRendererFactory.java
	You may optionally provide a class named CustomReqFieldRendererFactory which
	implements com.transcendsys.platform.web.field.renderer.IReqFieldRendererFactory
	(generally by extending com.transcendsys.platform.web.field.renderer.base.ReqFieldRendererFactory)
	to implement custom rendering of various field types.
	Its constructor should take the following arguments: String type, String family, Properties props, com.transcendsys.platform.web.profile.UserProfile userProfile

Standard_Process_Template/__0/customAPI/web/CustomReqFieldFactory.java
	You may optionally provide a class named CustomReqFieldFactory which
	extends com.transcendsys.platform.web.field.renderer.base.ReqFieldRendererFactory
	to implement custom parsing/formatting of various field types.
	Its constructor should take the following argumetns: FieldContext fieldContext
	
Standard_Process_Template/__0/customAPI/web/CustomContextMenuHandlerFactory.java
	You may optionally provide a class named CustomContextMenuHandlerFactory which
	implements com.transcendsys.platform.web.contextmenu.IContextMenuHandler
	(generally by extending com.transcendsys.platform.web.contextmenu.BaseContextMenuHandler).
	This will allow you to customize context menu generation (these are the menus which
	"pop up" when you click the "yellow triangle" icon in the top right corner of
	a table cell, for example).

Standard_Process_Template/__0/customAPI/model/CustomModelNameDefaulter.java
	You may optionally provide a class named CustomModelNameDefaulter
	which implements com.transcendsys.platform.server.model.CustomModelNameDefaulter
	(generally by extending com.transcendsys.platform.server.model.StandardCustomModelNameDefaulter).
	This will allow you to specify what custom model name should be used when 
	no custom model name is explicitly supplied.  (For example, apps may create models 
	without having the benefit of knowing which custom model to use from the SPT.)

Standard_Retail_Process_Template/__0/customAPI/ixm/CustomIXMHooks.java
  You may optionally provide a class named CustomIXMHooks which
  extends com.transcendsys.platform.ixm.fmwk.IXMHooks.  This will allow
  you to customize the behavior of IXM Engines, including modifying
  task generation behavior & registering tasks to be run when all tasks
  are complete.
