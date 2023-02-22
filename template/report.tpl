%include('template/index.tpl')
<h2 class="text-center">Occidental Mindoro Ministry</h2>
<h4 class="text-center">2023 Ministry Report<h4>
<hr>
<table class='table table-hover'>
  <thead>
   <tr class='table-success'>
    %for head in header:
      <th scope="col">{{head}}</th>
    %end
   </tr>
 </thead>
<tbody>
%for row in rows:
    <tr>
  %for col in row:
        <td>{{col}}</td>
  %end
    </tr>
%end
</tbody>
</table>
