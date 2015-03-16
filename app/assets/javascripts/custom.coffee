$ ->
  $(document).on 'focus keyup', '.countdown', (e) ->
    $this = $(this)
    msgSpan = $this.parents('div').find('.counter_msg')
    ml = parseInt($this.attr('maxlength'))
    length = @value.length
    msg = ml - length + ' remaining'
    msgSpan.html msg
    return

  $.rails.allowAction = (link) ->
    return true unless link.attr('data-confirm')
    $.rails.showConfirmDialog(link) 
    false 

  $.rails.confirmed = (link) ->
    link.removeAttr('data-confirm')
    link.trigger('click.rails')

  $.rails.showConfirmDialog = (link) ->
    message = link.attr 'data-confirm'
    html = """
           <div class="modal" id="confirmationDialog">
             <div class="modal-dialog">
               <div class="modal-content">
                 <div class="modal-header">
                   <a class="close" data-dismiss="modal">×</a>
                   <strong>#{message}</strong>
                 </div>
                 <div class="modal-footer">
                   <a data-dismiss="modal" class="btn">CANCEL</a>
                   <a data-dismiss="modal" class="btn btn-primary confirm">DELETE</a>
                 </div>
               </div>
             </div>
           </div>
           """
    $(html).modal()
    $('#confirmationDialog .confirm').on 'click', -> $.rails.confirmed(link)

ready = ->
  $('#show_preview').bind 'click', ->
    title = $('input#article_title').val()
    body = $('textarea#article_body').val()
    $('#myModal').modal 'hide'
    $.ajax({
      type: "POST",
      url: "/previews/create",
      data: { preview: { title: title, body: body } },
      success:(data) ->
        return false
      error:(data) ->
        return false
    })
    return false

$(document).on 'ready page:load', ready
