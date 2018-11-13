module JobsHelper

  def job_type(job_type)
    if job_type == "1 år"
      content_tag :span, "#{job_type}", class: "tag is-Info"
    elsif job_type == "8 måneder"
      content_tag :span, "#{job_type}", class: "tag is-Info"
    elsif job_type == "6 måneder"
      content_tag :span, "#{job_type}", class: "tag is-Info"
    elsif job_type == "2 måneder"
      content_tag :span, "#{job_type}", class: "tag is-Info"
    else
      ""
    end
  end

  def job_author(job)
    user_signed_in? && current_user.id == job.user_id
  end
end
