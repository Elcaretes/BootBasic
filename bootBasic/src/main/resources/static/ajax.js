// ajax요청 url에 context 없으면 추가
function fixUrlPath(url) {
	if (url.indexOf(ctx) < 0) {
		url = ctx + url;
	}
	return url;
}

/**
 * Ajax 호출.
 * dataType: JSON
 * 
 * @param url A string containing the URL to which the request is sent.
 * @param params Data to be sent to the server. It is converted to a query string, if not already a string.
 * @param doneCallback success callback option
 * @param elementId id of html element that print error messages option
 * @returns jQuery XMLHttpRequest object
 */
function sendJsonRequest(url, params, doneCallback) {
	
	var deferredObj = $.ajax({
		url : fixUrlPath(url),
		type : "POST",
		dataType : "json",
		cache : false,
		data : params,
		traditional: true,
	});
	deferredObj.done(function(data, textStatus, jqXHR) {
		processDone(data, textStatus, jqXHR, doneCallback);
	});
	deferredObj.fail(function(jqXHR, textStatus, errorThrown) {
		processFail(jqXHR, textStatus, errorThrown);
	});
	return deferredObj;
}

function sendJsonFileRequest( url, formData, doneCallback ) {
	$.ajax({
		data : formData,
		type : 'POST',
		url : ctx + url,
		cache : false,
		contentType : false,
		enctype : 'multipart/form-data',
		processData : false,
		success : function( result ) {
			if (  result.code != "S001" ) {
				console.log("["+ result.code + "]: " + result.msg);
				alert( result.msg );
			} else {
				doneCallback( result.items );
			}
		},
		error: function(xhr, textStatus, errorThrown){
			alert("시스템 장애가 발생 하였습니다. 잠시 후에 다시 시도해 주세요.");
		}		
	});
}

/**
 * An alternative construct to the success callback option.
 * 
 * @param data data returned from the server,
 * 			formatted according to the dataType parameter
 * @param textStatus string describing the status
 * @param jqXHR jQuery XMLHttpRequest object
 * @param doneCallback success callback option
 */
function processDone(data, textStatus, jqXHR, doneCallback) {
	if (typeof(data) !== 'undefined' && typeof(data.code) !== 'undefined' && data.code != "S001") {
		if (typeof(spinner) !== "undefined") {
			hideSpinner();
		}
		console.log("["+ data.code + "]: " + data.msg);
		alert( data.msg );
	} else if (typeof(doneCallback) !== 'undefined') {
		if (typeof(data.items) != "undefined") {
			doneCallback(data.items);
		} else {
			doneCallback(data);
		}
	}
}

/**
 * An alternative construct to the error callback option.
 * 
 * @param jqXHR jQuery XMLHttpRequest object
 * @param textStatus a string describing the type of error 
 * 			that occurred and an optional exception object, if one occurred.
 * 			Possible values for the second argument (besides null) are 
 * 			"timeout", "error", "abort", and "parsererror"
 * @param errorThrown receives the textual portion of the HTTP status,
 * 			such as "Not Found" or "Internal Server Error."
 */
function processFail(jqXHR, textStatus, errorThrown) {
	if (typeof (console) !== 'undefined' && typeof (console.log) !== 'undefined') {
		console.log(textStatus + " - " + jqXHR.status + " (" + errorThrown + ")");
	}
	if (jqXHR.status == 500) {
		alert("내부 시스템 에러.");
	} else if (jqXHR.status == 404) {
		alert("경로가 잘못 되었습니다.");
	} else if (jqXHR.status == 408) {
		alert("잠시 후 다시 시도해 주세요.");
	} else if (jqXHR.status == 403) {
		alert("접근 권한이 없습니다.");
	}
	
	if (jqXHR.getResponseHeader("SESSION_EXPIRED") != null) {
		alert("세션이 만료되어 메인페이지로 이동합니다.");
		window.location.href = ctx + "/login";
	}
}