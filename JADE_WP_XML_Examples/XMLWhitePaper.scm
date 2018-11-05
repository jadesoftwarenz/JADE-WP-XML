jadeVersionNumber "6.1.15";
schemaDefinition
XMLWhitePaper subschemaOf RootSchema completeDefinition, patchVersioningEnabled = false;
importedPackageDefinitions
constantDefinitions
	categoryDefinition ACTIONS
		AUTHENTICATE:                  Integer = 1;
		EXPORT:                        String = "on";
		IMPORT:                        Integer = 3;
		SEARCH:                        Integer = 2;
	categoryDefinition FILEPATHS
		XMLDIR:                        String = "c:\JadeXMLWhitePaper\";
localeDefinitions
	5129 "English (New Zealand)" schemaDefaultLocale;
libraryDefinitions
typeHeaders
	XMLWhitePaper subclassOf RootSchemaApp transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, highestOrdinal = 7, number = 2321;
	ContactDetail subclassOf Object abstract, highestOrdinal = 8, number = 2322;
	Address subclassOf ContactDetail highestOrdinal = 6, number = 2323;
	Email subclassOf ContactDetail highestOrdinal = 1, number = 2324;
	Phone subclassOf ContactDetail highestOrdinal = 4, number = 2325;
	GXMLWhitePaper subclassOf RootSchemaGlobal transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, highestSubId = 1, highestOrdinal = 2, number = 2326;
	WPXMLWebServiceProvider subclassOf JadeWebServiceProvider transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2327;
	WPXMLAttribute subclassOf JadeXMLAttribute number = 2328;
	WPXMLCDATA subclassOf JadeXMLCDATA number = 2329;
	WPXMLComment subclassOf JadeXMLComment number = 2330;
	WPXMLText subclassOf JadeXMLText number = 2331;
	WPXMLDocument subclassOf JadeXMLDocument highestOrdinal = 4, number = 2332;
	WPXMLDocumentType subclassOf JadeXMLDocumentType number = 2333;
	WPXMLElement subclassOf JadeXMLElement number = 2334;
	WPXMLProcessingInstruction subclassOf JadeXMLProcessingInstruction number = 2335;
	Person subclassOf Object highestSubId = 1, highestOrdinal = 12, number = 2336;
	Root subclassOf Object highestSubId = 3, highestOrdinal = 4, number = 2337;
	User subclassOf Object highestOrdinal = 9, number = 2338;
	SXMLWhitePaper subclassOf RootSchemaSession transient, sharedTransientAllowed, transientAllowed, subclassSharedTransientAllowed, subclassTransientAllowed, number = 2339;
	ContactDetailsByMethod subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66, number = 2340;
	PersonsByLastNameDict subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66, number = 2341;
	UserDict subclassOf MemberKeyDictionary loadFactor = 66, number = 2342;
	WPXMLDocumentByNameDict subclassOf MemberKeyDictionary duplicatesAllowed, loadFactor = 66, number = 2343;
	WPXMLElementArray subclassOf ObjectArray loadFactor = 66, transient, number = 2344;
	WPXMLDocumentArray subclassOf Array loadFactor = 66, number = 2345;
 
interfaceDefs
membershipDefinitions
	ContactDetailsByMethod of ContactDetail ;
	PersonsByLastNameDict of Person ;
	UserDict of User ;
	WPXMLDocumentByNameDict of WPXMLDocument ;
	WPXMLElementArray of WPXMLElement ;
	WPXMLDocumentArray of WPXMLDocument ;
 
typeDefinitions
	Object completeDefinition
	(
	)
	Application completeDefinition
	(
	)
	RootSchemaApp completeDefinition
	(
	)
	XMLWhitePaper completeDefinition
	(
	attributeDefinitions
		createFile:                    String[31] number = 6, ordinal = 6;
		login_password:                String[31] number = 1, ordinal = 1;
		login_username:                String[31] number = 2, ordinal = 2;
		srchFirstName:                 String[31] number = 4, ordinal = 4;
		srchLastName:                  String[31] number = 5, ordinal = 5;
		xmlAction:                     Integer number = 3, ordinal = 3;
		xmlFilename:                   String subId = 1, number = 7, ordinal = 7;
 
	jadeMethodDefinitions
		resetValues() updating, number = 1001;
	)
	ContactDetail completeDefinition
	(
	attributeDefinitions
		contactMethod:                 String[31] readonly, number = 1, ordinal = 7;
		contactType:                   String[31] readonly, number = 3, ordinal = 8;
	referenceDefinitions
		myPerson:                      Person   explicitEmbeddedInverse, readonly, number = 2, ordinal = 3;
	)
	Address completeDefinition
	(
	attributeDefinitions
		addressLine1:                  String[31] readonly, number = 1, ordinal = 1;
		addressLine2:                  String[31] readonly, number = 2, ordinal = 2;
		city:                          String[31] readonly, number = 4, ordinal = 4;
		country:                       String[31] readonly, number = 6, ordinal = 6;
		postCode:                      String[31] readonly, number = 5, ordinal = 5;
		suburb:                        String[31] readonly, number = 3, ordinal = 3;
 
	jadeMethodDefinitions
		setDetails(
			pContactType: String; 
			pAddressLine1: String; 
			pAddressLine2: String; 
			pSuburb: String; 
			pCity: String; 
			pCountry: String; 
			pPostCode: String) updating, number = 1001;
	)
	Email completeDefinition
	(
	attributeDefinitions
		emailAddress:                  String[61] readonly, number = 1, ordinal = 1;
 
	jadeMethodDefinitions
		setDetails(
			pContactType: String; 
			pEmailAddress: String) updating, number = 1001;
	)
	Phone completeDefinition
	(
	attributeDefinitions
		areaCode:                      Integer readonly, number = 2, ordinal = 2;
		countryCode:                   Integer readonly, number = 1, ordinal = 1;
		phoneNumber:                   String[31] readonly, number = 3, ordinal = 3;
 
	jadeMethodDefinitions
		getPhoneNumber(): String number = 1001;
		setDetails(
			pContactType: String; 
			pCountryCode: Integer; 
			pAreaCode: Integer; 
			pPhoneNumber: String) updating, number = 1002;
	)
	Global completeDefinition
	(
	)
	RootSchemaGlobal completeDefinition
	(
	)
	GXMLWhitePaper completeDefinition
	(
	)
	JadeScript completeDefinition
	(
 
	jadeMethodDefinitions
		createPeopleRecords(pXMLDocument: JadeXMLDocument) number = 1016;
		createPeopleXMLDocument() number = 1008;
		deletePeople() updating, number = 1011;
		deleteXMLDocuments() updating, number = 1007;
		importPeople() number = 1015;
		listPeople() number = 1002;
		persistentImport() number = 1003;
		persistentSplitImport() number = 1013;
		setupAllData() number = 1001;
		setupPeopleData() number = 1009;
		setupPersonData(
			pFirstName: String; 
			pLastName: String; 
			pOccupation: String; 
			pAddrType: String; 
			pAddrLine1: String; 
			pAddrLine2: String; 
			pSuburb: String; 
			pCity: String; 
			pCountry: String; 
			pPostCode: String; 
			pHmCCode: Integer; 
			pHmAreaCode: Integer; 
			pHmPhoneNumber: String; 
			pWkCCode: Integer; 
			pWkAreaCode: Integer; 
			pWkPhoneNumber: String; 
			pCellCCode: Integer; 
			pCellAreaCode: Integer; 
			pCellPhoneNumber: String; 
			pEmailType: String; 
			pEmail: String) number = 1006;
		setupUserData() number = 1004;
	)
	JadeWebService completeDefinition
	(
	webServicesClassProperties
	(
		wsdl = ``;
	)
	)
	JadeWebServiceProvider completeDefinition
	(
	webServicesClassProperties
	(
		additionalInfo = ``;
		wsdl = ``;
		secureService = default;
	)
	)
	WPXMLWebServiceProvider completeDefinition
	(
	webServicesClassProperties
	(
		additionalInfo = ``;
		wsdl = ``;
		secureService = default;
	)
 
	jadeMethodDefinitions
		buildImportResponse(pPeople: PersonsByLastNameDict): JadeXMLDocument number = 1007;
		buildLoginResponse(
			pUsername: String; 
			pPassword: String): JadeXMLDocument number = 1013;
		buildPersonSearchResponse(pPeople: PersonsByLastNameDict): JadeXMLDocument number = 1009;
		buildXMLReply(): String number = 1006;
		createPeopleRecords(pXMLDocument: JadeXMLDocument): PersonsByLastNameDict number = 1012;
		createXMLFile(
			pXMLDocument: JadeXMLDocument; 
			pFilename: String) number = 1011;
		findPeople(
			pFirstName: String; 
			pLastName: String): PersonsByLastNameDict number = 1008;
		getNameValue(
			src: String; 
			name: String io; 
			val: String io) number = 1005;
		importPeople(pFilename: String): JadeXMLDocument number = 1010;
		procMessage(message: String) number = 1004;
		processRequest() updating, protected, number = 1001;
		reply(): String updating, protected, number = 1002;
		splitNameValuePairs(
			src: String; 
			sa: StringArray io) number = 1003;
	)
	JadeXMLNode completeDefinition
	(
 
	jadeMethodDefinitions
		makePersistent(
			elmnt: Class; 
			attr: Class; 
			comment: Class; 
			cdata: Class; 
			text: Class; 
			docType: Class; 
			pi: Class; 
			xmlDoc: JadeXMLDocument input): JadeXMLNode updating, number = 1002;
		makePersistentIndividual(class: Class): JadeXMLNode updating, number = 1003;
	)
	JadeXMLAttribute completeDefinition
	(
 
	jadeMethodDefinitions
		setElement(value: JadeXMLElement) updating, number = 1001;
	)
	WPXMLAttribute completeDefinition
	(
	)
	JadeXMLCharacterData completeDefinition
	(
	)
	JadeXMLCDATA completeDefinition
	(
	)
	WPXMLCDATA completeDefinition
	(
	)
	JadeXMLComment completeDefinition
	(
	)
	WPXMLComment completeDefinition
	(
	)
	JadeXMLText completeDefinition
	(
	)
	WPXMLText completeDefinition
	(
	)
	JadeXMLDocument completeDefinition
	(
 
	jadeMethodDefinitions
		setDocumentType(value: JadeXMLDocumentType) updating, number = 1001;
	)
	WPXMLDocument completeDefinition
	(
	attributeDefinitions
		name:                          String[71] readonly, number = 2, ordinal = 4;
	referenceDefinitions
		myRoot:                        Root   explicitEmbeddedInverse, readonly, number = 1, ordinal = 3;
 
	jadeMethodDefinitions
		setName(value: String) updating, number = 1002;
		setRootElement(pElmnt: WPXMLElement input) updating, number = 1001;
	)
	JadeXMLDocumentType completeDefinition
	(
	)
	WPXMLDocumentType completeDefinition
	(
	)
	JadeXMLElement completeDefinition
	(
	)
	WPXMLElement completeDefinition
	(
	)
	JadeXMLProcessingInstruction completeDefinition
	(
	)
	WPXMLProcessingInstruction completeDefinition
	(
	)
	Person completeDefinition
	(
	attributeDefinitions
		firstName:                     String[31] readonly, number = 1, ordinal = 1;
		lastName:                      String[31] number = 2, ordinal = 2;
		occupation:                    String[31] readonly, number = 10, ordinal = 10;
	referenceDefinitions
		allContactDetails:             ContactDetailsByMethod   explicitInverse, readonly, subId = 1, number = 3, ordinal = 11;
		myRoot:                        Root   explicitEmbeddedInverse, readonly, number = 4, ordinal = 12;
 
	jadeMethodDefinitions
		setDetails(
			pFirstName: String; 
			pLastName: String; 
			pOccupation: String) updating, number = 1001;
	)
	Root completeDefinition
	(
	referenceDefinitions
		allPersons:                    PersonsByLastNameDict   explicitInverse, readonly, subId = 2, number = 2, ordinal = 2;
		allUsers:                      UserDict   explicitInverse, readonly, subId = 1, number = 1, ordinal = 3;
		allWPXMLDocuments:             WPXMLDocumentByNameDict   explicitInverse, readonly, subId = 3, number = 3, ordinal = 4;
	)
	User completeDefinition
	(
	attributeDefinitions
		firstname:                     String[31] readonly, number = 3, ordinal = 3;
		lastname:                      String[31] readonly, number = 4, ordinal = 4;
		password:                      String[31] readonly, number = 5, ordinal = 5;
		username:                      String[31] readonly, number = 7, ordinal = 7;
	referenceDefinitions
		myRoot:                        Root   explicitEmbeddedInverse, readonly, number = 1, ordinal = 9;
 
	jadeMethodDefinitions
		setDetails(
			pFirstname: String; 
			pLastname: String; 
			pUsername: String; 
			pPassword: String) updating, number = 1001;
	)
	WebSession completeDefinition
	(
	)
	RootSchemaSession completeDefinition
	(
	)
	SXMLWhitePaper completeDefinition
	(
	)
	Collection completeDefinition
	(
	)
	Btree completeDefinition
	(
	)
	Dictionary completeDefinition
	(
	)
	MemberKeyDictionary completeDefinition
	(
	)
	ContactDetailsByMethod completeDefinition
	(
	)
	PersonsByLastNameDict completeDefinition
	(
	)
	UserDict completeDefinition
	(
	)
	WPXMLDocumentByNameDict completeDefinition
	(
	)
	List completeDefinition
	(
	)
	Array completeDefinition
	(
	)
	ObjectArray completeDefinition
	(
	)
	WPXMLElementArray completeDefinition
	(
	)
	WPXMLDocumentArray completeDefinition
	(
	)
	String completeDefinition
	(
 
	jadeMethodDefinitions
		convertFromHex(): Integer number = 1001;
		replacePlusForSpace() updating, number = 1003;
		replaceWebSpecialsUser(): String updating, number = 1002;
	)
 
 
memberKeyDefinitions
	ContactDetailsByMethod completeDefinition
	(
		contactMethod;
	)
	PersonsByLastNameDict completeDefinition
	(
		lastName;
		firstName;
	)
	UserDict completeDefinition
	(
		username;
	)
	WPXMLDocumentByNameDict completeDefinition
	(
		name;
	)
 
inverseDefinitions
	allContactDetails of Person peerOf myPerson of ContactDetail;
	allWPXMLDocuments of Root peerOf myRoot of WPXMLDocument;
	myRoot of Person peerOf allPersons of Root;
	myRoot of User peerOf allUsers of Root;
databaseDefinitions
XMLWhitePaperDb
	(
	databaseFileDefinitions
		"xmlwhitepaper" number=1428;
	defaultFileDefinition "xmlwhitepaper";
	classMapDefinitions
		SXMLWhitePaper in "_environ";
		XMLWhitePaper in "_usergui";
		GXMLWhitePaper in "xmlwhitepaper";
		WPXMLDocument in "xmlwhitepaper";
		WPXMLElement in "xmlwhitepaper";
		WPXMLDocumentType in "xmlwhitepaper";
		WPXMLComment in "xmlwhitepaper";
		WPXMLAttribute in "xmlwhitepaper";
		WPXMLText in "xmlwhitepaper";
		WPXMLCDATA in "xmlwhitepaper";
		WPXMLProcessingInstruction in "xmlwhitepaper";
		Root in "xmlwhitepaper";
		WPXMLWebServiceProvider in "xmlwhitepaper";
		User in "xmlwhitepaper";
		UserDict in "xmlwhitepaper";
		Person in "xmlwhitepaper";
		ContactDetail in "xmlwhitepaper";
		Address in "xmlwhitepaper";
		Phone in "xmlwhitepaper";
		Email in "xmlwhitepaper";
		ContactDetailsByMethod in "xmlwhitepaper";
		PersonsByLastNameDict in "xmlwhitepaper";
		WPXMLDocumentArray in "xmlwhitepaper";
		WPXMLElementArray in "xmlwhitepaper";
		WPXMLDocumentByNameDict in "xmlwhitepaper";
	)
schemaViewDefinitions
_exposedListDefinitions
XMLWhitePaper version=0, priorVersion=0, registryId="_WebServices_Provider"
(
)
exportedPackageDefinitions
externalFunctionSources
typeSources
	XMLWhitePaper (
	jadeMethodSources
resetValues
{
resetValues() updating;

vars

begin
	createFile := ' ';
	login_password := ' ';
	login_username := ' ';
	srchFirstName := ' ';
	srchLastName := ' ';
	xmlAction := 0;
	xmlFilename := ' ';
end;
}

	)
	Address (
	jadeMethodSources
setDetails
{
setDetails(pContactType, pAddressLine1, pAddressLine2, pSuburb, pCity, pCountry, pPostCode : String) updating;

vars

begin
	contactMethod := "Address";
	contactType := pContactType;
	addressLine1 := pAddressLine1;
	addressLine2 := pAddressLine2;
	suburb := pSuburb;
	city := pCity;
	country := pCountry;
	postCode := pPostCode;
end;
}

	)
	Email (
	jadeMethodSources
setDetails
{
setDetails(pContactType, pEmailAddress : String) updating;

vars

begin
	contactMethod := "Email";
	contactType := pContactType;
	emailAddress := pEmailAddress;
end;
}

	)
	Phone (
	jadeMethodSources
getPhoneNumber
{
getPhoneNumber() : String;

vars

begin
	return "+" & countryCode.String & " " & areaCode.String & " " & phoneNumber;
end;
}

setDetails
{
setDetails(pContactType : String; pCountryCode, pAreaCode : Integer; pPhoneNumber : String) updating;

vars

begin
	contactMethod := "Phone";
	contactType := pContactType;
	areaCode := pAreaCode;
	countryCode := pCountryCode;
	phoneNumber := pPhoneNumber;
end;
}

	)
	JadeScript (
	jadeMethodSources
createPeopleRecords
{
createPeopleRecords(pXMLDocument : JadeXMLDocument);

vars
	root				:	Root;
	// Element variables
	elmnt, contDet,
	eladdr,elphone,
	elemail				:	JadeXMLElement;
	//Element arrays
	people, contacts	:	JadeXMLElementArray;
	//Classes to instantiate
	person				:	Person;
	address				:	Address;
	phone				:	Phone;
	email				:	Email;
	//ContactDetail
	contactType			:	String;
	//Address Details
	addressLine1,
	addressLine2,
	suburb, city,
	country, postCode	:	String;
	//Phone Details
	countryCode, 
	areaCode			:	Integer;
	phoneNumber			:	String;
	//Email Details
	emailAddress		:	String;
	//Person
	firstName,lastName,
	occupation			:	String;
begin
	root := Root.firstInstance;
	
	beginTransaction;
	create people transient;
	create contacts transient;

	pXMLDocument.getElementsByTagName("PERSON_DETAILS", people);
	foreach elmnt in people do
		create person persistent;
		firstName := elmnt.getElementByTagName("PERSON_FIRST_NAME").textData;
		lastName := elmnt.getElementByTagName("PERSON_LAST_NAME").textData;
		occupation := elmnt.getElementByTagName("OCCUPATION").textData;
		person.setDetails(firstName, lastName, occupation);
		contDet := elmnt.getElementByTagName("CONTACT_DETAILS");
		eladdr := contDet.getElementByTagName("ADDRESS_DETAILS");
		if eladdr <> null then
			create address persistent;
			contactType := eladdr.getAttributeByName("TYPE").value;
			addressLine1 := eladdr.getElementByTagName("ADDRESS_LINE_1").textData;
			addressLine2 := eladdr.getElementByTagName("ADDRESS_LINE_2").textData;
			suburb := eladdr.getElementByTagName("SUBURB").textData;
			city := eladdr.getElementByTagName("CITY").textData;
			country := eladdr.getElementByTagName("COUNTRY").textData;
			postCode := eladdr.getElementByTagName("POSTCODE").textData;
			address.setDetails(contactType, addressLine1, addressLine2, suburb, city, country, postCode);
			person.allContactDetails.add(address);
		endif;
		contDet.getAllElementsByTagName("PHONE", contacts);
		foreach elphone in contacts do
			create phone persistent;
			contactType := elphone.getAttributeByName("TYPE").value;
			countryCode := elphone.textData[2:3].Integer;
			areaCode := elphone.textData[5:5].Integer;
			phoneNumber := elphone.textData[7:end];
			phone.setDetails(contactType, countryCode, areaCode, phoneNumber);
			person.allContactDetails.add(phone);
		endforeach;
		elemail := contDet.getElementByTagName("EMAIL");
		if elemail <> null then
			create email persistent;
			contactType := elemail.getAttributeByName("TYPE").value;
			emailAddress := elemail.textData;
			email.setDetails(contactType, emailAddress);
			person.allContactDetails.add(email);
		endif;
		root.allPersons.add(person);
	endforeach;
	commitTransaction;
epilog
	delete people;
	delete contacts;
end;
}

createPeopleXMLDocument
{
createPeopleXMLDocument();

vars
	xmlDoc			:	JadeXMLDocument;
	rootElement,
	pers,
	contact,
	addr,
	elmnt			:	JadeXMLElement;
	person			:	Person;
	address			:	Address;
	email			:	Email;
	phone			:	Phone;
	contDet			:	ContactDetail;
	root			:	Root;
begin
	root := Root.firstInstance;
	create xmlDoc;
	xmlDoc.addComment("This document includes Person Details");
	xmlDoc.addDocumentType("PEOPLE_DETAILS", null, null, "<!ELEMENT PEOPLE_DETAILS ANY>
      <!ELEMENT PERSON_DETAILS (PERSON_FIRST_NAME, PERSON_LAST_NAME, OCCUPATION, CONTACT_DETAILS)>
      <!ELEMENT PERSON_FIRST_NAME (#PCDATA)>
      <!ELEMENT PERSON_LAST_NAME (#PCDATA)>
      <!ELEMENT OCCUPATION (#PCDATA)>
 	  <!ELEMENT CONTACT_DETAILS (ADDRESS_DETAILS+, EMAIL+, PHONE+)>
      <!ELEMENT ADDRESS_DETAILS (ADDRESS_LINE_1, ADDRESS_LINE_2?, SUBURB?, CITY?, COUNTRY?, POSTCODE?)>
      <!ELEMENT ADDRESS_LINE_1 (#PCDATA)>
      <!ELEMENT ADDRESS_LINE_2 (#PCDATA)>
      <!ELEMENT SUBURB (#PCDATA)>
      <!ELEMENT CITY (#PCDATA)>
      <!ELEMENT COUNTRY (#PCDATA)>
      <!ELEMENT POSTCODE (#PCDATA)>
      <!ELEMENT EMAIL (#PCDATA)>
      <!ELEMENT PHONE (#PCDATA)>");

	rootElement := xmlDoc.addElement("PEOPLE_DETAILS");

	foreach person in root.allPersons do
		pers := rootElement.addElement("PERSON_DETAILS");
		elmnt := pers.addElement("PERSON_FIRST_NAME");
		elmnt.setText(person.firstName);
		elmnt := pers.addElement("PERSON_LAST_NAME");
		elmnt.setText(person.lastName);
		elmnt := pers.addElement("OCCUPATION");
		elmnt.setText(person.occupation);
		contact := pers.addElement("CONTACT_DETAILS");
		
		foreach contDet in person.allContactDetails do
			if contDet.isKindOf(Address) then
				address := contDet.Address;
				addr := contact.addElement("ADDRESS_DETAILS");
				addr.addAttribute("TYPE", address.contactType);
				elmnt := addr.addElement("ADDRESS_LINE_1");
				elmnt.setText(address.addressLine1);
				elmnt := addr.addElement("ADDRESS_LINE_2");
				elmnt.setText(address.addressLine2);
				elmnt := addr.addElement("SUBURB");
				elmnt.setText(address.suburb);
				elmnt := addr.addElement("CITY");
				elmnt.setText(address.city);
				elmnt := addr.addElement("COUNTRY");
				elmnt.setText(address.country.toUpper);
				elmnt := addr.addElement("POSTCODE");
				elmnt.setText(address.postCode);
			endif;
			if contDet.isKindOf(Phone) then
				phone := contDet.Phone;
				elmnt := contact.addElement("PHONE");
				elmnt.addAttribute("TYPE", phone.contactType);
				elmnt.setText(phone.getPhoneNumber);
			endif;
			if contDet.isKindOf(Email) then
				email := contDet.Email;
				elmnt := contact.addElement("EMAIL");
				elmnt.addAttribute("TYPE", email.contactType);
				elmnt.setText(email.emailAddress);
			endif;
		endforeach;
	endforeach;
	xmlDoc.writeToFile("c:\JadeXMLWhitePaper\People Exported.xml");
epilog
	delete xmlDoc;
end;
}

deletePeople
{
deletePeople() updating;

vars
	pers	:	Person;
	user	:	User;
begin
	beginTransaction;
	foreach pers in Person.instances do
		pers.allContactDetails.purge;
		delete pers;
	endforeach;
	foreach user in User.instances do
		delete user;
	endforeach;
	commitTransaction;
end;
}

deleteXMLDocuments
{
deleteXMLDocuments() updating;

vars
	xmlDoc		:	WPXMLDocument;
	root		:	Root;
begin
	root := Root.firstInstance;
	beginTransaction;
	foreach xmlDoc in WPXMLDocument.instances do
		delete xmlDoc;
	endforeach;
	commitTransaction;
end;
}

importPeople
{
importPeople();

vars
	xmlDoc		:	JadeXMLDocument;
	parser		:	JadeXMLDocumentParser;
begin
	create xmlDoc transient;
	create parser transient;
	
	parser.parseDocumentFile(xmlDoc, "c:\JadeXMLWhitePaper\People to Import 1.xml");
	createPeopleRecords(xmlDoc);
epilog
	delete xmlDoc;
	delete parser;
end;
}

listPeople
{
listPeople();

vars
	root	:	Root;
	pers	:	Person;
begin
	root := Root.firstInstance;
	foreach pers in root.allPersons do
		write pers.firstName & Tab & pers.lastName & Tab & pers.occupation;
	endforeach;
end;
}

persistentImport
{
persistentImport();

vars
	parser	:	JadeXMLDocumentParser;
	xmlDoc	:	WPXMLDocument;
	root	:	Root;
begin
	root := Root.firstInstance;
	beginTransaction;
	create xmlDoc;
	create parser;
	parser.setClassMapping(JadeXMLAttribute, WPXMLAttribute);
	parser.setClassMapping(JadeXMLCDATA, WPXMLCDATA);
	parser.setClassMapping(JadeXMLComment, WPXMLComment);
	parser.setClassMapping(JadeXMLText, WPXMLText);
	parser.setClassMapping(JadeXMLDocumentType, WPXMLDocumentType);
	parser.setClassMapping(JadeXMLElement, WPXMLElement);
	parser.setClassMapping(JadeXMLProcessingInstruction, WPXMLProcessingInstruction);
	parser.parseDocumentFile(xmlDoc, "c:\JadeXMLWhitePaper\Persistent XML Structure.xml");
	xmlDoc.setName("All People");
	root.allWPXMLDocuments.add(xmlDoc);
	commitTransaction;
epilog
	delete parser;
end;
}

persistentSplitImport
{
persistentSplitImport();

vars
	parser			:	JadeXMLDocumentParser;
	xmlDoc			:	JadeXMLDocument;
	newXMLDoc		:	WPXMLDocument;
	elmnt			:	JadeXMLElement;
	rootElmnt		:	WPXMLElement;
	elmntArray		:	JadeXMLElementArray;
	name			:	String;
	root			:	Root;
begin
	root := Root.firstInstance;
	create xmlDoc transient;
	create elmntArray transient;
	create parser transient;
	parser.parseDocumentFile(xmlDoc, "c:\JadeXMLWhitePaper\Persistent XML Structure.xml");
	xmlDoc.getElementsByTagName("DEPT_PEOPLE", elmntArray);
	beginTransaction;
	foreach elmnt in elmntArray do
		name := elmnt.getAttributeByName("NAME").value;
		create newXMLDoc persistent;
		rootElmnt := elmnt.makePersistent(WPXMLElement, WPXMLAttribute, WPXMLComment, WPXMLCDATA, 
			WPXMLText, WPXMLDocumentType, WPXMLProcessingInstruction, newXMLDoc).WPXMLElement;
		newXMLDoc.addElementObject(rootElmnt, rootElmnt.tagName);
		newXMLDoc.setName(name);
		root.allWPXMLDocuments.add(newXMLDoc);
		write newXMLDoc.writeToString;
		newXMLDoc.inspect;
	endforeach;
	commitTransaction;
epilog
	delete elmntArray;
	delete parser;
	delete xmlDoc;
end;
}

setupAllData
{
setupAllData();

vars
	root	:	Root;
begin
	root := Root.firstInstance;
	beginTransaction;
	if root = null then
		create root persistent;
	endif;
	commitTransaction;
	setupUserData;
	setupPeopleData;
end;
}

setupPeopleData
{
setupPeopleData();

vars

begin
	setupPersonData("John", "Doe", "Financial Adviser",
				"Home", "Strode House", "143 Paritai Drive", "Orakei", "Auckland", "New Zealand", "1005",
				64, 9, "576 8352",
				64, 9, "523 6495",
				64, 21, "353 642",
				"Work", "jdoe@financialadvisement.co.nz");
	setupPersonData("Joe", "Public", "IT Director",
				"Home", "Apartment 31", "352 Customhouse Quay", "Central City", "Auckland", "New Zealand", "1001",
				64, 9, "522 8475",
				64, 9, "514 7522",
				64, 275, "292 467",
				"Work", "joe.public@cio.co.nz");
	setupPersonData("Joanne", "Howard", "Chief Executive Officer",
				"Home", "Suite 43", "89 Kent Street", "Central City", "Sydney", "Australia", "NSW 2000",
				61, 2, "9256 2222",
				61, 2, "9246 4621",
				61, 41, "378 6787",
				"Work", "j.howard@company.com.au");
	setupPersonData("Wendy", "Jones", "Unemployed",
				"Home", "143 Darlinghurst Road", null, "Darlinghurst", "Sydney", "Australia", null,
				61, 2, "9767 2514",
				null, null, null,
				61, 42, "452 2578",
				"Home", "wjones@hotmail.com");
	setupPersonData("Mario", "Dolce", "Business Analyst",
				"Home", "69 St James's Street", null, null, "London", "United Kingdom", "SW1A 1PJ",
				44, 20, "7493 1164",
				44, 21, "7542 2314",
				null, null, null,
				"Work", "mariod@uk.business.com");
				
end;
}

setupPersonData
{
setupPersonData(pFirstName, pLastName, pOccupation,
				pAddrType, pAddrLine1, pAddrLine2, pSuburb, pCity, pCountry, pPostCode : String;
				pHmCCode, pHmAreaCode : Integer; pHmPhoneNumber : String;
				pWkCCode, pWkAreaCode : Integer; pWkPhoneNumber : String;
				pCellCCode, pCellAreaCode : Integer; pCellPhoneNumber : String;
				pEmailType, pEmail : String);

vars
	pers	:	Person;
	addr	:	Address;
	phone	:	Phone;
	email	:	Email;
	root	:	Root;
begin
	root := Root.firstInstance;
	beginTransaction;
	create pers;
	pers.setDetails(pFirstName, pLastName, pOccupation);
	
	create addr;
	addr.setDetails(pAddrType, pAddrLine1, pAddrLine2, pSuburb, pCity, pCountry, pPostCode);
	pers.allContactDetails.add(addr);
	
	if pHmCCode <> null then
		create phone;
		phone.setDetails("Home", pHmCCode, pHmAreaCode, pHmPhoneNumber);
		pers.allContactDetails.add(phone);
	endif;
	
	if pWkCCode <> null then
		create phone;
		phone.setDetails("Work", pWkCCode, pWkAreaCode, pWkPhoneNumber);
		pers.allContactDetails.add(phone);
	endif;
	
	if pCellCCode <> null then
		create phone;
		phone.setDetails("Cell", pCellCCode, pCellAreaCode, pCellPhoneNumber);
		pers.allContactDetails.add(phone);
	endif;
	
	create email;
	email.setDetails(pEmailType, pEmail);
	pers.allContactDetails.add(email);
	if not root.allPersons.includes(pers) then
		root.allPersons.add(pers);
	endif;
	commitTransaction;
end;
}

setupUserData
{
setupUserData();

vars
	user : User;
begin
	beginTransaction;
	create user;
	user.setDetails('Test', 'User', 'test', 'xmlweb');
	commitTransaction;
end;
}

	)
	WPXMLWebServiceProvider (
	jadeMethodSources
buildImportResponse
{
buildImportResponse(pPeople : PersonsByLastNameDict) : JadeXMLDocument;

vars
	xmlDoc		:	JadeXMLDocument;
	rootElement,
	elmnt,
	pers		:	JadeXMLElement;
	person		:	Person;
begin
	create xmlDoc transient;
	if pPeople.size > 0 then
		xmlDoc.outputDeclaration := true;
		xmlDoc.addProcessingInstruction('xml:stylesheet type="text/xsl"', 'href="confirmation.xsl"');
		rootElement := xmlDoc.addElement("PEOPLE_DETAILS");
		foreach person in pPeople do
			pers := rootElement.addElement("PERSON_DETAILS");
			elmnt := pers.addElement("PERSON_FIRST_NAME");
			elmnt.setText(person.firstName);
			elmnt := pers.addElement("PERSON_LAST_NAME");
			elmnt.setText(person.lastName);
			elmnt := pers.addElement("OCCUPATION");
			elmnt.setText(person.occupation);
		endforeach;
	endif;
	return xmlDoc;
end;
}

buildLoginResponse
{
buildLoginResponse(pUsername, pPassword : String) : JadeXMLDocument;

vars
	rootElmnt,
	elmnt	:	JadeXMLElement;
	xmlDoc	:	JadeXMLDocument;
	user	:	User;
	root	:	Root;
begin
	root := Root.firstInstance;
	user := root.allUsers.getAtKey(pUsername);
	create xmlDoc transient;
	if user <> null then
		if user.password = pPassword then
			xmlDoc.addProcessingInstruction('xml:stylesheet type="text/xsl"', 'href="welcome.xsl"');
			xmlDoc.addComment('Welcome Details');
			rootElmnt := xmlDoc.addElement('USER');//the root element
				elmnt := rootElmnt.addElement('FIRSTNAME');
				elmnt.setText(user.firstname);
				elmnt := rootElmnt.addElement('LASTNAME');
				elmnt.setText(user.lastname);
		else
			xmlDoc.addComment('Login Error');
			rootElmnt := xmlDoc.addElement('LOGIN_ERROR');
				elmnt := rootElmnt.addElement('CODE');
				elmnt.setText('2000');
				elmnt := rootElmnt.addElement('MESSAGE');
				elmnt.setText('Password Incorrect');
		endif;
	else
		xmlDoc.addComment('Login Error');
		rootElmnt := xmlDoc.addElement('LOGIN_ERROR');
			elmnt := rootElmnt.addElement('CODE');
			elmnt.setText('2000');
			elmnt := rootElmnt.addElement('MESSAGE');
			elmnt.setText('Password Incorrect');
	endif;
			
	return xmlDoc;
end;
}

buildPersonSearchResponse
{
buildPersonSearchResponse(pPeople : PersonsByLastNameDict) : JadeXMLDocument;

vars
	xmlDoc			:	JadeXMLDocument;
	rootElement,
	pers,
	contact,
	addr,
	elmnt			:	JadeXMLElement;
	person			:	Person;
	address			:	Address;
	email			:	Email;
	phone			:	Phone;
	contDet			:	ContactDetail;
	pi				:	JadeXMLProcessingInstruction;
begin
	create xmlDoc transient;
	xmlDoc.outputDeclaration := true;
	pi := xmlDoc.addProcessingInstruction('xml:stylesheet type="text/xsl"', 'href="peopleresults.xsl"');
	xmlDoc.addComment("This document includes Person Details");
	xmlDoc.addDocumentType("PEOPLE_DETAILS", null, null, "<!ELEMENT PEOPLE_DETAILS ANY>
      <!ELEMENT PERSON_DETAILS (PERSON_FIRST_NAME, PERSON_LAST_NAME, OCCUPATION, CONTACT_DETAILS)>
      <!ELEMENT PERSON_FIRST_NAME (#PCDATA)>
      <!ELEMENT PERSON_LAST_NAME (#PCDATA)>
      <!ELEMENT OCCUPATION (#PCDATA)>
 	  <!ELEMENT CONTACT_DETAILS (ADDRESS_DETAILS+, EMAIL+, PHONE+)>
      <!ELEMENT ADDRESS_DETAILS (ADDRESS_LINE_1, ADDRESS_LINE_2?, SUBURB?, CITY?, COUNTRY?, POSTCODE?)>
      <!ELEMENT ADDRESS_LINE_1 (#PCDATA)>
      <!ELEMENT ADDRESS_LINE_2 (#PCDATA)>
      <!ELEMENT SUBURB (#PCDATA)>
      <!ELEMENT CITY (#PCDATA)>
      <!ELEMENT COUNTRY (#PCDATA)>
      <!ELEMENT POSTCODE (#PCDATA)>
      <!ELEMENT EMAIL (#PCDATA)>
      <!ELEMENT PHONE (#PCDATA)>");
	
	rootElement := xmlDoc.addElement("PEOPLE_DETAILS");
	
	foreach person in pPeople do
		pers := rootElement.addElement("PERSON_DETAILS");
		elmnt := pers.addElement("PERSON_FIRST_NAME");
		elmnt.setText(person.firstName);
		elmnt := pers.addElement("PERSON_LAST_NAME");
		elmnt.setText(person.lastName);
		elmnt := pers.addElement("OCCUPATION");
		elmnt.setText(person.occupation);
		contact := pers.addElement("CONTACT_DETAILS");
		
		foreach contDet in person.allContactDetails do
			if contDet.isKindOf(Address) then
				address := contDet.Address;
				addr := contact.addElement("ADDRESS_DETAILS");
				addr.addAttribute("TYPE", address.contactType);
				elmnt := addr.addElement("ADDRESS_LINE_1");
				elmnt.setText(address.addressLine1);
				elmnt := addr.addElement("ADDRESS_LINE_2");
				elmnt.setText(address.addressLine2);
				elmnt := addr.addElement("SUBURB");
				elmnt.setText(address.suburb);
				elmnt := addr.addElement("CITY");
				elmnt.setText(address.city);
				elmnt := addr.addElement("COUNTRY");
				elmnt.setText(address.country.toUpper);
				elmnt := addr.addElement("POSTCODE");
				elmnt.setText(address.postCode);
			elseif contDet.isKindOf(Phone) then
				phone := contDet.Phone;
				elmnt := contact.addElement("PHONE");
				elmnt.addAttribute("TYPE", phone.contactType);
				elmnt.setText(phone.getPhoneNumber);
			elseif contDet.isKindOf(Email) then
				email := contDet.Email;
				elmnt := contact.addElement("EMAIL");
				elmnt.addAttribute("TYPE", email.contactType);
				elmnt.setText(email.emailAddress);
			endif;
		endforeach;
	endforeach;
	return xmlDoc;
end;
}

buildXMLReply
{
buildXMLReply() : String;
vars
	xmldoc 				 :	JadeXMLDocument;
	username, password, 
	firstname, lastname, 
	filename, createFile :	String;
	people				 :	PersonsByLastNameDict;
	xmlReply			 :	String;
begin
	if app.xmlAction = AUTHENTICATE then
		username := app.login_username;
		password := app.login_password;
		if username <> null and password <> null then
			xmldoc := buildLoginResponse(username, password);
			xmlReply := xmldoc.writeToString;
		endif;
		app.resetValues;
	elseif app.xmlAction = SEARCH then
		firstname := app.srchFirstName;
		lastname := app.srchLastName;
		createFile := app.createFile;
		filename := app.xmlFilename;	
		people := findPeople(firstname, lastname);
		xmldoc := buildPersonSearchResponse(people);
		xmlReply := xmldoc.writeToString;
		if createFile = EXPORT and filename <> null then
			createXMLFile(xmldoc, filename);
		endif;
		app.resetValues;
	elseif app.xmlAction = IMPORT then
		filename := app.xmlFilename;
		if filename <> null then
			xmldoc := importPeople(filename);
		endif;
		xmlReply :=	xmldoc.writeToString;
		app.resetValues;
	endif;
	return xmlReply;
epilog
	delete xmldoc;
	delete people;
end;
}

createPeopleRecords
{
createPeopleRecords(pXMLDocument : JadeXMLDocument) : PersonsByLastNameDict;

vars
	root				:	Root;
	// Element variables
	elmnt, contDet, 
	eladdr, elphone,
	elemail				:	JadeXMLElement;
	//Element arrays
	people, contacts	:	JadeXMLElementArray;
	//Classes to instantiate
	person				:	Person;
	address				:	Address;
	phone				:	Phone;
	email				:	Email;
	//ContactDetail
	contactType			:	String;
	//Address Details
	addressLine1,
	addressLine2,
	suburb, city,
	country, postCode	:	String;
	//Phone Details
	countryCode, 
	areaCode			:	Integer;
	phoneNumber			:	String;
	//Email Details
	emailAddress		:	String;
	persDict			:	PersonsByLastNameDict;
	//Person
	firstName, lastName,
	occupation			:	String;
begin
	root := Root.firstInstance;
	beginTransaction;
	create persDict transient;
	create people transient;
	create contacts transient;

	pXMLDocument.getElementsByTagName("PERSON_DETAILS", people);
	foreach elmnt in people do
		create person persistent;
		firstName := elmnt.getElementByTagName("PERSON_FIRST_NAME").textData;
		lastName := elmnt.getElementByTagName("PERSON_LAST_NAME").textData;
		occupation := elmnt.getElementByTagName("OCCUPATION").textData;
		person.setDetails(firstName, lastName, occupation);
		contDet := elmnt.getElementByTagName("CONTACT_DETAILS");
		eladdr := contDet.getElementByTagName("ADDRESS_DETAILS");
		if eladdr <> null then
			create address persistent;
			contactType := eladdr.getAttributeByName("TYPE").value;
			addressLine1 := eladdr.getElementByTagName("ADDRESS_LINE_1").textData;
			addressLine2 := eladdr.getElementByTagName("ADDRESS_LINE_2").textData;
			suburb := eladdr.getElementByTagName("SUBURB").textData;
			city := eladdr.getElementByTagName("CITY").textData;
			country := eladdr.getElementByTagName("COUNTRY").textData;
			postCode := eladdr.getElementByTagName("POSTCODE").textData;
			address.setDetails(contactType, addressLine1, addressLine2, suburb, city, country, postCode);
			person.allContactDetails.add(address);
		endif;
		contDet.getAllElementsByTagName("PHONE", contacts);
		foreach elphone in contacts do
			create phone persistent;
			contactType := elphone.getAttributeByName("TYPE").value;
			countryCode := elphone.textData[2:3].Integer;
			areaCode := elphone.textData[5:5].Integer;
			phoneNumber := elphone.textData[7:end];
			phone.setDetails(contactType, countryCode, areaCode, phoneNumber);
			person.allContactDetails.add(phone);
		endforeach;
		elemail := contDet.getElementByTagName("EMAIL");
		if elemail <> null then
			create email persistent;
			contactType := elemail.getAttributeByName("TYPE").value;
			emailAddress := elemail.textData;
			email.setDetails(contactType, emailAddress);
			person.allContactDetails.add(email);
		endif;
		root.allPersons.add(person);
		persDict.add(person);
		contacts.clear;
	endforeach;
	commitTransaction;
	return persDict;
epilog
	delete people;
	delete contacts;
end;
}

createXMLFile
{
createXMLFile(pXMLDocument : JadeXMLDocument; pFilename : String);

vars
	jxmlNode	:	JadeXMLNode;
begin
	beginTransaction;
	jxmlNode := pXMLDocument.childNodes[1];
	delete jxmlNode;
	commitTransaction;
	pXMLDocument.writeToFile(pFilename);
end;
}

findPeople
{
findPeople(pFirstName, pLastName : String) : PersonsByLastNameDict;

vars
	iter		:	Iterator;
	pers		:	Person;
	persDict	:	PersonsByLastNameDict;
	root		:	Root;
begin
	root := Root.firstInstance;
	create persDict transient;
	iter := root.allPersons.createIterator;
	if pFirstName <> null and pLastName <> null then
		while iter.next(pers) do
			if pers.firstName = pFirstName and pers.lastName = pLastName then
				persDict.add(pers);
			endif;
		endwhile;
	elseif pFirstName <> null and pLastName = null then
		while iter.next(pers) do
			if pers.firstName = pFirstName then
				persDict.add(pers);
			endif;
		endwhile;
	elseif pFirstName = null and pLastName <> null then
		while iter.next(pers) do
			if pers.lastName = pLastName then
				persDict.add(pers);
			endif;
		endwhile;
	else
		while iter.next(pers) do
			persDict.add(pers);
		endwhile;
	endif;
	return persDict;
epilog
	delete iter;
end;
}

getNameValue
{
getNameValue(src : String; name, val :String io);
constants
	DELIM_CHAR 	: String = '=';
vars
	pos 		: Integer;
begin
	if src = "lastname=" or src = "firstname=" or src = "createfile=" or src = "filename=" then
		val := null;
	else
		pos := 1;
		name := src.scanUntil(DELIM_CHAR, pos);
		pos := pos+1;
		val := src[pos:end];
	endif;
end;
}

importPeople
{
importPeople(pFilename : String) : JadeXMLDocument;

vars
	xmlDoc,
	response	:	JadeXMLDocument;
	parser		:	JadeXMLDocumentParser;
	persDict	:	PersonsByLastNameDict;
begin
	create xmlDoc transient;
	create parser transient;
	create response transient;
	
	parser.parseDocumentFile(xmlDoc, pFilename);
	persDict := createPeopleRecords(xmlDoc);
	response := buildImportResponse(persDict);
	return response;
epilog
	delete xmlDoc;
	delete parser;
end;
}

procMessage
{
procMessage(message : String);

vars
	name, username, 
	password, firstname, 
	lastname, filename, 
	createfile 			: String;
	arrNameVal 			: StringArray;

begin
	create arrNameVal transient;
	splitNameValuePairs(message,arrNameVal);
	
	if arrNameVal[1]='form=login' then
		getNameValue(arrNameVal[2],name,username);
		getNameValue(arrNameVal[3],name,password);
		app.login_username := username;
		app.login_password := password;
		app.xmlAction := AUTHENTICATE;
	elseif arrNameVal[1]='form=search' then
		getNameValue(arrNameVal[2],name,firstname);
		getNameValue(arrNameVal[3],name,lastname);
		getNameValue(arrNameVal[4],name,createfile);
		if arrNameVal.size = 5 then
			getNameValue(arrNameVal[5],name,filename);
		endif;
		app.srchFirstName := firstname;
		app.srchLastName := lastname;
		app.createFile := createfile;
		if filename <> null then
			filename := filename.replaceWebSpecialsUser;
			app.xmlFilename := filename;
		endif;
		app.xmlAction := SEARCH;
	elseif arrNameVal[1]='form=import' then
		getNameValue(arrNameVal[2], name, filename);
		if filename <> null then
			filename := filename.replaceWebSpecialsUser;
			app.xmlFilename := filename;
		endif;
		app.xmlAction := IMPORT;
	endif;
epilog
	delete arrNameVal;
end;
}

processRequest
{
processRequest() updating, protected;

vars
	message : String;
begin
	rawXML := true;
	message := incomingMessage;
	procMessage(message);
	//inheritMethod();
end;
}

reply
{
reply(): String updating, protected;

vars
	xml 	: String;
begin
	xml := buildXMLReply;
	return xml;
	//return inheritMethod();
end;
}

splitNameValuePairs
{
splitNameValuePairs(src : String; sa : StringArray io);
constants
	DELIM_CHAR : String = '&';
vars
	pos : Integer;
	nvp : String;
begin
	sa.clear;
	pos := 1;
	while pos <> 0 do
		nvp := src.scanUntil(DELIM_CHAR, pos);
		sa.add(nvp);
		if pos <> 0 then
			pos := pos + 1;
		endif;
	endwhile;
end;
}

	)
	JadeXMLNode (
	jadeMethodSources
makePersistent
{
makePersistent(elmnt, attr, comment, cdata, text, docType, pi : Class; xmlDoc : JadeXMLDocument input) : JadeXMLNode updating;

vars
	newNode,
	newChildNode,
	childNode		:	JadeXMLNode;
	attribute,
	newAttr			:	JadeXMLAttribute;
begin

	if self.isKindOf(JadeXMLElement) then
		newNode := self.makePersistentIndividual(elmnt);
		foreach childNode in self.childNodes do
			newChildNode := childNode.makePersistent(elmnt, attr, comment, cdata, text, docType, pi, xmlDoc);
			newChildNode.parentNode := newNode;
		endforeach;
		foreach attribute in self.JadeXMLElement.attributes do
			newAttr := attribute.makePersistent(elmnt, attr, comment, cdata, text, docType, pi, xmlDoc).JadeXMLAttribute;
			newAttr.setElement(newNode.JadeXMLElement);
		endforeach;
	elseif self.isKindOf(JadeXMLAttribute) then
		newNode := self.makePersistentIndividual(attr);
	elseif self.isKindOf(JadeXMLComment) then
		newNode := self.makePersistentIndividual(comment);
		foreach childNode in self.childNodes do
			newChildNode := childNode.makePersistent(elmnt, attr, comment, cdata, text, docType, pi, xmlDoc);
			newChildNode.parentNode := newNode;
		endforeach;
	elseif self.isKindOf(JadeXMLCDATA) then
		newNode := self.makePersistentIndividual(cdata);
		foreach childNode in self.childNodes do
			newChildNode := childNode.makePersistent(elmnt, attr, comment, cdata, text, docType, pi, xmlDoc);
			newChildNode.parentNode := newNode;
		endforeach;
	elseif self.isKindOf(JadeXMLText) then
		newNode := self.makePersistentIndividual(text);
		foreach childNode in self.childNodes do
			newChildNode := childNode.makePersistent(elmnt, attr, comment, cdata, text, docType, pi, xmlDoc);
			newChildNode.parentNode := newNode;
		endforeach;
	elseif self.isKindOf(JadeXMLDocumentType) then
		newNode := self.makePersistentIndividual(docType);
		foreach childNode in self.childNodes do
			newChildNode := childNode.makePersistent(elmnt, attr, comment, cdata, text, docType, pi, xmlDoc);
			newChildNode.parentNode := newNode;
		endforeach;
		xmlDoc.setDocumentType(newNode.JadeXMLDocumentType);
	elseif self.isKindOf(JadeXMLProcessingInstruction) then
		newNode := self.makePersistentIndividual(pi);
		foreach childNode in self.childNodes do
			newChildNode := childNode.makePersistent(elmnt, attr, comment, cdata, text, docType, pi, xmlDoc);
			newChildNode.parentNode := newNode;
		endforeach;
	endif;
	newNode.document := xmlDoc;
	return newNode;
end;

}

makePersistentIndividual
{
makePersistentIndividual(class : Class) : JadeXMLNode updating;

vars
	xmlNode		:	JadeXMLNode;
begin
	xmlNode := copySelfAs(class, false).JadeXMLNode;
	return xmlNode;
end;

}

	)
	JadeXMLAttribute (
	jadeMethodSources
setElement
{
setElement(value : JadeXMLElement) updating;

vars

begin
	if element <> value then
		element := value;
	endif;
end;

}

	)
	JadeXMLDocument (
	jadeMethodSources
setDocumentType
{
setDocumentType(value : JadeXMLDocumentType) updating;

vars

begin
	if docType <> value then
		docType := value;
	endif;
end;

}

	)
	WPXMLDocument (
	jadeMethodSources
setName
{
setName(value : String) updating;

vars

begin
	if name <> value then
		name := value;
	endif;
end;
}

setRootElement
{
setRootElement(pElmnt : WPXMLElement input) updating;

vars

begin
	if rootElement <> pElmnt then
		rootElement := pElmnt;
	endif;
end;
}

	)
	Person (
	jadeMethodSources
setDetails
{
setDetails(pFirstName, pLastName, pOccupation : String) updating;

vars
	root	:	Root;
begin
	firstName := pFirstName;
	lastName := pLastName;
	occupation := pOccupation;
end;
}

	)
	User (
	jadeMethodSources
setDetails
{
setDetails(pFirstname, pLastname, pUsername, pPassword : String) updating;

vars

begin
	firstname := pFirstname;
	lastname := pLastname;
	username := pUsername;
	password := pPassword;
	
	myRoot := Root.firstInstance;
end;
}

	)
	String (
	jadeMethodSources
convertFromHex
{
convertFromHex(): Integer;
 
constants
 HexValues = '0123456789ABCDEF';
vars
  u,v:  Integer;
begin
 // try common ones first
 if self = '0D' then
  return 13;
 elseif self = '0A' then
  return 10;
 elseif self = '28' then
  return 40;
 elseif self = '29' then
  return 41;
 elseif self = '3A' then
  return 58;
 elseif self = '2C' then
  return 44;
 elseif self = '3C' then
  return 60;
 elseif self = '27' then
  return 39;
 endif;  
 u := HexValues.pos(self[1],1);
 v := HexValues.pos(self[2],1);
 return (u - 1) * 16 + v - 1;
end;
}

replacePlusForSpace
{
replacePlusForSpace() updating;

vars

begin
	self.replaceChar("+".Character, " ".Character);
end;
}

replaceWebSpecialsUser
{
replaceWebSpecialsUser() : String updating;

vars
 str, str1: String;
 i,j, num:  Integer;
 char: Character;
begin

 replacePlusForSpace;
 if pos('%', 1) = 0 then
  return self;
 endif; 
 
 i := 1;
 
 str[length] := ' ';
 str := null;
 
 while i < length do
 	j := pos('%', i);
  	if j = 0 or j + 2 > length then
   		break;
  	endif; 
 	char := self[j + 1 : 2].convertFromHex.Character;
 	if j - i < 1 then
 		str := str & char;
  	else 
   		str1 := self[i: j - i];
   		str := str & str1 & char;
  	endif; 
  	i := j + 3;
 endwhile;
 
 if i <= length then
  	str := str & self[i:end];
 endif;
 
 return str;
end;
}

	)
