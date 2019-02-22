<cfquery name="log2" datasource="Student">
                  INSERT INTO tbl_log   
                  VALUES ('#form.fname#', '#form.lname#', '#form.course#', 'IN', GETDATE(),'#form.imgs#', '#form.purpose#','#form.cid#','1')
                </cfquery>  
     <!---            <audio controls autoplay src="audio/in.mp3" hidden></audio> --->
<cflocation url="index.cfm" addToken="false" statusCode="301">
