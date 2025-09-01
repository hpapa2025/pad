### 專案介紹
<div  style="padding-left: 10px;"> 
<p>臺灣身體活動與飲食實作指引(Taiwan HPA Physical Activity and Diet Implementation Guide，PAD IG)採用HL7® FHIR® standard（Fast Healthcare Interoperability Resources）IG建置方法，在<a href="http://hl7.org/fhir/R4/">FHIR R4.0.1</a>之標準基礎上，繼承TW Core IG V0.3.2 (2024-12-12)，進一步定義適用於「身體活動與飲食」資料需求的Resources（類似資料表）、其中的資料項目（意即欄位）、基數（意即0..1、0..*、1..1或1..*）及資料類型（文字、日期時間、代碼等）等。</p>
</div>

### 專案背景
<div  style="padding-left: 10px;"> 
<p>世界衛生組織（World Health Organization，WHO）指出，身體活動量不足、不健康的飲食、過量飲酒及菸品使用，是導致非傳染性疾病的四大主要風險因子。久坐和缺乏身體活動以及攝取高熱量食品、高鹽分食物之不適當飲食習慣，皆會增加代謝症候群風險，進而導致罹患心血管疾病等慢性疾病機率上升，因此透過AI科技應用推動全齡身體活動與健康飲食發展策略並提供使用者個人化之即時互動與獎勵回饋，根據國外經驗，具有降低以上罹患慢性疾病風險之預估效果。
近年健康數位服務之軟硬體設備快速進步（如穿戴設備、健康管理應用程式、雲端平台），同時伴隨AI科技應用更多元精準發展，國人運用穿戴裝置或透過智慧型手機紀錄身體活動及飲食內容，進行個人化健康數據管理日趨盛行，該行為模式為量化與追蹤健康狀態提供更即時回饋建議，另透過數據回饋機制，能夠有效引導使用者改變健康行為並提升健康意識。此外，數位解決方案亦能打破地域及場地限制，促進多元族群參與，透過AI分析導入個人化的健康建議及獎勵機制，進一步增強健康行動的持續性與有效性。
爰上，為促進全齡族群參與身體活動、健康飲食並強化健康促進與降低慢性疾病風險，衛生福利部國民健康署（國健署）規劃建立應用AI科技導入推動全齡身體活動與健康飲食發展服務模式，整合身體活動資源地圖平台，構建社區身體活動與健康飲食管理模式及獎勵機制，藉由導入 AI 技術，提升資料整合效率，強化政府在健康促進活動中提供民眾即時有效行為改善建議之執行能力，實現資料驅動的健康管理以完善全民健康政策。為此，國健署特委託執行本計畫。
</p>
</div>


### 專案範圍

#### 使用案例(Use Case)
<div  style="padding-left: 10px;"> 
<p>To Do...</p>
<img class="figure-img img-responsive img-rounded center-block" src="usecase.png" alt="IG use case" style="display: block;margin-left: auto;margin-right: auto;width: 45%;"/>
</div>

#### 循序圖


作業流程如下：
To Do...
<div style="justify-content: center;display: flex;">{% include index.svg %}</div>
<!--For CI-Build> <img class="figure-img img-responsive img-rounded center-block" src="sequence.png" alt="IG use case" style="display: block;margin-left: auto;margin-right: auto;width: 45%;"/> <-->

### 如何閱讀這個實作指引(IG)
<div  style="padding-left: 10px;"> 
<p>PAD IG之網站架構圖如下圖所示。各功能說明如下：</p>

<img class="figure-img img-responsive img-rounded center-block" src="structure.png" alt="IG架構圖" style="display: block;margin-left: auto;margin-right: auto;width: 90%;"/>
<div style="clear:both;"></div>

<ul>
	<li><strong><a href="index.html">應用說明</a></strong>：PAD IG介紹及背景說明。</li>
	<li><strong><a href="vision.html">視覺化邏輯模型</a></strong>：PAD IG邏輯模型架構視覺化圖。</li>
	<li><strong><a href="artifacts.html">規範文件</a></strong>
	<ul>
		<li><strong><a href="capabilitystatements.html">能力聲明</a>
			</strong>：應用PAD IG於建置業務目的使用的FHIR Server時，該FHIR Server必須及建議應該支援的資料存取功能。
		</li>
		<li><strong><a href="models.html">邏輯模型</a>
			</strong>：PAD IG的所有邏輯模型(Logical Models)，邏輯模型會定義相應情境下使用的所有資料欄位。為了便於實作者快速理解，資料欄位會使用易於理解的命名，實作者再透過邏輯模型中的功能頁籤「Mappings」瞭解各資料欄位實際使用PAD IG的哪個Profiles的哪個資料項目(element)。
		</li>
    	<li><strong><a href="profiles.html">FHIR Profiles</a></strong>：
        	<ul>
          		<li>PAD IG的所有Profiles之定義與範例。</li>
          		<li>各資料項目不同實作強制程度的Terminology。</li>
        	</ul>
      	</li>
		<li><strong><a href="terminologies.html">專門術語</a>
			</strong>：PAD IG所使用的專門術語，包括代碼系統（Code Systems）及值集（Value Sets）。
		</li>
	</ul>
	</li>
	<li><strong><a href="examples.html">範例</a></strong>：PAD IG所定義Profiles之範例檔。</li>
	<li><strong><a href="downloads.html">定義與範例檔下載</a></strong>：實作者若不偏好使用FHIR RESTful API驗證資料是否符合Profiles，可直接下載所需的格式驗證檔，包括XML、JSON及Turtle三種格式，亦可於此下載完整範例檔。</li>
	<li><strong><a href="security.html">安全性</a></strong>：主要說明採用PAD IG網站進行實作時，有關資料存取授權的作法。</li>
	<li><strong><a href="https://vacc.cdc.gov.tw/vacc/history.html">版本異動</a></strong>：若PAD IG網站的版本有所異動，皆可透過<a href="https://vacc.cdc.gov.tw/vacc/history.html">異動說明頁</a>得以瞭解版本間的異動差異。</li>
</ul>
</div>

### 作者與貢獻者
<table class="grid">
    <thead>
        <tr class="header">
            <th style="width:10%">角色</th>
            <th style="width:30%">姓名</th>
            <th style="width:50%">機構</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="vertical-align: middle;">作者-IG</td>
            <td style="vertical-align: middle;">李麗惠</td>
            <td rowspan="3" style="vertical-align: middle;">國立臺北護理健康大學-健康事業管理系</td>
        </tr>
        <tr>
            <td>作者-IG</td>
            <td>曾鈺珈</td>
        </tr>
        <tr>
            <td>作者-IG</td>
            <td>楊宜蓁</td>
        </tr>
    </tbody>
</table>