//@ui5-bundle catalog/Component-preload.js
jQuery.sap.registerPreloadedModules({
"version":"2.0",
"modules":{
	"catalog/Component.js":function(){sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("catalog.Component",{metadata:{manifest:"json"}})});
},
	"catalog/i18n/i18n.properties":'# This is the resource bundle for catalog\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Lista de carros\n\n#YDES: Application description\nappDescription=Lista de carros',
	"catalog/manifest.json":'{"_version":"1.40.0","sap.app":{"id":"catalog","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap-ux/fiori-elements-writer:lrop","version":"0.3.6","toolsId":"50c2f9b1-e0c9-4a74-9a85-ec103c1b777d"},"crossNavigation":{"inbounds":{"Carros-display":{"signature":{"parameters":{},"additionalParameters":"allowed"},"semanticObject":"Carros","action":"display"}}},"dataSources":{"mainService":{"uri":"catalog/","type":"OData","settings":{"annotations":["annotation"],"localUri":"localService/metadata.xml","odataVersion":"4.0"}},"annotation":{"type":"ODataAnnotation","uri":"annotations/annotation.xml","settings":{"localUri":"annotations/annotation.xml"}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.102.1","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"catalog.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"synchronizationMode":"None","operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"routes":[{"pattern":":?query:","name":"CarrosList","target":"CarrosList"},{"pattern":"Carros({key}):?query:","name":"CarrosObjectPage","target":"CarrosObjectPage"}],"targets":{"CarrosList":{"type":"Component","id":"CarrosList","name":"sap.fe.templates.ListReport","options":{"settings":{"entitySet":"Carros","variantManagement":"Page","navigation":{"Carros":{"detail":{"route":"CarrosObjectPage"}}},"initialLoad":"Enabled"}}},"CarrosObjectPage":{"type":"Component","id":"CarrosObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":true,"entitySet":"Carros"}}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"carslist.service"}}'
}});