<?xml version="1.0" encoding="UTF-8"?>
<con:xsltEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xslt><![CDATA[<xsl:stylesheet version="1.0" exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl app eo com oraxsl DVMFunctions BasicCredentialsUserFunction UUIDUserFunction IsUserInRoleFunction IsUserInGroupFunction XrefFunctions" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:app="http://www.Core Banking.com/fixml" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:eo="http://xmlns.Brenda/ESB/EO/Parties/Customer/V1" xmlns:com="http://xmlns.Brenda/ESB/EO/Common/V1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:acceo="http://xmlns.Brenda/ESB/EO/Accounts/Account/V1" xmlns:ns0="http://xmlns.Brenda/ESB/EO/Resilience/Biometric/V1">
  <oracle-xsl-mapper:schema>
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="XSD">
        <oracle-xsl-mapper:schema location="../../../MDS/CustomerEO.xsd"/>
        <oracle-xsl-mapper:rootElement name="ESBMsg" namespace="http://xmlns.Brenda/ESB/EO/Parties/Customer/V1"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../../../../ESBMetadata/ComponentLibrary/ProviderServices/Core Banking/AppMetadata/xsds/FIXML.xsd"/>
        <oracle-xsl-mapper:rootElement name="FIXML" namespace="http://www.Core Banking.com/fixml"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
  </oracle-xsl-mapper:schema>
  <xsl:template match="/">
    <FIXML xmlns="http://www.Core Banking.com/fixml">
      <Header>
        <RequestHeader>
          <MessageKey>
            <RequestUUID>
              <xsl:value-of select="/eo:ESBMsg/com:MsgID"/>
            </RequestUUID>
            <ServiceRequestId>verifyCustomerDetails</ServiceRequestId>
            <ServiceRequestVersion>10.2</ServiceRequestVersion>
            <ChannelId>
              <xsl:value-of select="/eo:ESBMsg/com:Source"/>
            </ChannelId>
            <LanguageId/>
          </MessageKey>
          <RequestMessageInfo>
            <tenantId>54</tenantId>
            <TimeZone/>
            <EntityId/>
            <EntityType/>
            <ArmCorrelationId/>
            <MessageDateTime>2014-01-06T15:26:27.979</MessageDateTime>
          </RequestMessageInfo>
          <Security>
            <Token>
              <PasswordToken>
                <UserId/>
                <Password/>
              </PasswordToken>
            </Token>
            <FICertToken/>
            <RealUserLoginSessionId/>
            <RealUser/>
            <RealUserPwd/>
            <SSOTransferToken/>
          </Security>
        </RequestHeader>
      </Header>
      <Body>
        <verifyCustomerDetailsRequest>
          <CustomerVerifyRq>
            <recordId>
              <xsl:value-of select="/eo:ESBMsg/eo:RqData/eo:Customer/com:CustomerIdentifier/com:CustomerID"/>
            </recordId>
            <decision>Approve</decision>
            <entityName>RetailCustomer</entityName>
          </CustomerVerifyRq>
        </verifyCustomerDetailsRequest>
      </Body>
    </FIXML>
  </xsl:template>
</xsl:stylesheet>]]></con:xslt>
    <con:dependencies>
        <con:mapperDependency location="../../../../ESBMetadata/ComponentLibrary/ProviderServices/Core Banking/AppMetadata/xsds/FIXML.xsd">
            <con:schema ref="ESBMetadata/ComponentLibrary/ProviderServices/Core Banking/AppMetadata/xsds/FIXML"/>
        </con:mapperDependency>
        <con:mapperDependency location="../../../MDS/CustomerEO.xsd">
            <con:schema ref="Core BankingProv/MDS/CustomerEO"/>
        </con:mapperDependency>
    </con:dependencies>
</con:xsltEntry>