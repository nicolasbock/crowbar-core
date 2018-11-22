def upgrade(ta, td, a, d)
  a["apache"]["insecure"] = ta["apache"]["insecure"] unless a["apache"].key?("insecure")
  return a, d
end

def downgrade(ta, td, a, d)
  a["apache"].delete("insecure")
  return a, d
end
